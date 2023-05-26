package com.example.journal.controller;

import com.example.journal.service.GroupService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Slf4j
@RequiredArgsConstructor
@Controller
public class JournalController {

    private final SubjectService subjectService;
    private final GroupService groupService;
    private final UserService userService;

    @GetMapping("/{id}")
    public String getUserJournal(@PathVariable("id") Long id, Model model) {
        var user = userService.getById(id);
        log.info("USER: {}", user);
        model.addAttribute("user", user);
        model.addAttribute("subjects", subjectService.getAllByUserId(id));
        model.addAttribute("groups", groupService.getAllByUserId(id));
        return "teacher-journal.html";
    }

}

