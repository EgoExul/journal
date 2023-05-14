package com.example.journal.controller;

import com.example.journal.service.GroupService;
import com.example.journal.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequiredArgsConstructor
@Controller
public class TestController {

    private final SubjectService subjectService;
    private final GroupService groupService;

    @RequestMapping("/")
    public String homePage(Model model) {
        model.addAttribute("subjects", subjectService.getAll());
        model.addAttribute("groups", groupService.getAll());
        return "term2si";
    }

    @RequestMapping("auth")
    public String auth(Model model) {
        return "auth";
    }

}

