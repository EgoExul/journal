package com.example.journal.controller;

import com.example.journal.service.GroupService;
import com.example.journal.service.ScoreService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Slf4j
@RequiredArgsConstructor
@Controller
public class JournalController {

    private final SubjectService subjectService;
    private final GroupService groupService;
    private final UserService userService;
    private final ScoreService scoreService;

//    @PostMapping("/login")
//    public RedirectView authenticateUser(@ModelAttribute AuthDto auth, Model model) {
//        var user = userService.getByEmail(auth.getEmail(), auth.getPassword());
//
//        return user.getId() == null
//                ? new RedirectView("/login")
//                : new RedirectView("/user/" + user.getId());
//    }
//
//    @GetMapping("/login")
//    public String getLoginForm(Model model) {
//        model.addAttribute("auth", new AuthDto());
//
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

        if (user.isTeacher()) {
            if (subjectId != null && groupId != null) {
                var students = userService.getByGroupAndSubject(groupId, subjectId);
                model.addAttribute("students", students);
                model.addAttribute("subject", subjectService.getById(subjectId));
                model.addAttribute("selectedSubjectId", subjectId);
                model.addAttribute("selectedGroupId", groupId);
            }

            return "teacher-journal.html";
        } else {
            if (subjectId != null) {
                var scores = scoreService.getByUserIdAndSubjectId(id, subjectId);
                model.addAttribute("scores", scores);
                model.addAttribute("subject", subjectService.getById(subjectId));
                model.addAttribute("selectedSubjectId", subjectId);
            }

            return "student-journal.html";
        }
    }

    @PostMapping(
            path = "/user/{id}",
            consumes = {MediaType.APPLICATION_JSON_VALUE}
    )
    public String saveJournal(Model model, @PathVariable("id") Long id,
                              @RequestParam(required = false) Long subjectId,
                              @RequestParam(required = false) Long groupId,
                              @RequestBody ScoreDto scoreDto) {

        log.info("scoreDto: {}", scoreDto);
        scoreService.update(scoreDto.getId(), scoreDto.getValue());

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
    public static class ScoreDto {
        private Long id;
        private Integer value;
    }

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class AuthDto {
        private String email;
        private String password;
    }
}
