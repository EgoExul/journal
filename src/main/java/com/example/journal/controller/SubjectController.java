package com.example.journal.controller;

import com.example.journal.domain.Subject;
import com.example.journal.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SubjectController {

    private final SubjectService service;

    @Autowired
    public SubjectController(SubjectService service) {
        this.service = service;
    }

    @RequestMapping("subjects")
    public List<Subject> getAll() {
        return service.getAll();
    }
}

