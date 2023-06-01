package com.example.journal.controller;

import com.example.journal.domain.User;
import com.example.journal.service.GroupService;
import com.example.journal.service.ScoreService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
                var students = userService.getByGroupAndSubject(groupId, subjectId);
                model.addAttribute("students", students);
                model.addAttribute("subject", subjectService.getById(subjectId));
            }

            return "teacher-journal.html";
        } else {
            if (subjectId != null) {
                var scores = scoreService.getByUserIdAndSubjectId(id, subjectId);
                model.addAttribute("scores", scores);
            }

            return "student-journal.html";
        }
    }

    @PostMapping(path = "/user/{id}")
    public String saveJournal(Model model, @PathVariable("id") Long id,
                              @RequestParam(required = false) Long subjectId,
                              @RequestParam(required = false) Long groupId,
                              @ModelAttribute ArrayList<StudentDto> studentsForm) {
        log.info("Form: {}", studentsForm);
        var user = userService.getById(id);
        model.addAttribute("user", user);
        model.addAttribute("subjects", subjectService.getAllByUserId(id));
        model.addAttribute("groups", groupService.getAllByUserId(id));

        if (subjectId != null && groupId != null) {
            var students = userService.getByGroupAndSubject(groupId, subjectId);
            model.addAttribute("students", students);
            model.addAttribute("subject", subjectService.getById(subjectId));
        }

        return "teacher-journal.html";
    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public class FormDto {
        private ArrayList<StudentDto> studentsForm;
    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public class StudentDto {
        private Long id;
        private List<ScoreDto> scores;

        @Data
        @AllArgsConstructor
        @NoArgsConstructor
        public class ScoreDto {
            private Long controlId;
            private Long id;
            private Integer value;
        }
    }
}
