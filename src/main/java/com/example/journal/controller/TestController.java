package com.example.journal.controller;

import com.example.journal.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    private final SubjectService service;

    @Autowired
    public TestController(SubjectService service) {
        this.service = service;
    }

    @RequestMapping("/")
    public String homePage(Model model) {
        model.addAttribute("subjects", service.getAll());
        return "term2si";
    }

    @RequestMapping("auth")
    public String auth(Model model) {
        return "auth";
    }

}

