package com.example.journal.controller;

import com.example.journal.domain.Score;
import com.example.journal.domain.User;
import com.example.journal.service.GroupService;
import com.example.journal.service.ScoreService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Controller
public class JournalController {

    private final SubjectService subjectService;
    private final GroupService groupService;
    private final UserService userService;
    private final ScoreService scoreService;

//    @GetMapping("/login")
//    public String getUserJournal(@RequestParam("email") String email, @RequestParam("pass") String password,
//                                 @PathVariable("id") Long id, Model model) {
//        var user = userService.getById(id);
//        log.info("USER: {}", user);
//        model.addAttribute("user", user);
//        model.addAttribute("subjects", subjectService.getAllByUserId(id));
//        model.addAttribute("groups", groupService.getAllByUserId(id));
//
//        // Проверка логина и пароля
//        if (userService.checkCredentials(email, password)) {
//            if (user.getRole().getId() == 1L) {
//                return "teacher-journal.html"; // Перенаправление на страницу журнала учителя
//            } else {
//                return "student-journal.html"; // Перенаправление на страницу журнала студента
//            }
//        }
//        return "login";
//    }

    @GetMapping("/user/{id}")
    public String getJournal(Model model, @PathVariable("id") Long id,
                             @RequestParam(required = false) Long subjectId,
                             @RequestParam(required = false) Long groupId) {
        var user = userService.getById(id);
        model.addAttribute("user", user);
        model.addAttribute("subjects", subjectService.getAllByUserId(id));
        model.addAttribute("groups", groupService.getAllByUserId(id));

        if (user.getRole() == User.Role.TEACHER) {
            if (subjectId != null && groupId != null) {
                model.addAttribute("students",
                        groupService.getByIdAndSubject(groupId, Collections.singletonList(subjectId)).getUsers());
            }

            return "teacher-journal.html";
        } else {
            List<Score> scores;
            if (subjectId != null) {
                scores = scoreService.getByUserIdAndSubjectId(id, subjectId);
            } else {
                scores = scoreService.getByUserId(id);
            }
            model.addAttribute("scores", scores);
            model.addAttribute("selectedSubjectId", subjectId);

            return "student-journal.html";
        }
    }

}
