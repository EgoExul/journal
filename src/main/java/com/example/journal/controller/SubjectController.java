package com.example.journal.controller;

import com.example.journal.domain.Subject;
import com.example.journal.service.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class SubjectController {

    private final SubjectService service;

    @RequestMapping("subjects")
    public List<Subject> getAll() {
        return service.getAll();
    }
}

