package com.example.journal.controller;

import com.example.journal.domain.Filter;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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

    @GetMapping("/{id}")
    public String getJournal(@PathVariable("id") Long id, Model model) {
        var user = userService.getById(id);
        log.info("USER: {}", user);
        model.addAttribute("user", user);
        model.addAttribute("subjects", subjectService.getAllByUserId(id));
        model.addAttribute("groups", groupService.getAllByUserId(id));
        model.addAttribute("filter", new Filter());

        if (user.getRole() == User.Role.TEACHER) {
            return "teacher-journal.html";
        } else {
            return "student-journal.html";
        }
    }

    @PostMapping("/{id}")
    public String getJournal(@PathVariable("id") Long id, @ModelAttribute Filter filter, Model model) {
        var user = userService.getById(id);
        log.info("USER: {}", user);
        model.addAttribute("user", user);
        model.addAttribute("subjects", subjectService.getAllByUserId(id));
        model.addAttribute("groups", groupService.getAllByUserId(id));
        model.addAttribute("filter", filter);
        log.info("FILTER: {}", filter);

        if (user.getRole() == User.Role.TEACHER) {
            return "teacher-journal.html";
        } else {
            return "student-journal.html";
        }
    }

}
