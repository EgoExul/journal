package com.example.journal.service;

import com.example.journal.domain.Subject;
import com.example.journal.repository.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubjectService {
    private final SubjectRepository repository;

    @Autowired
    public SubjectService(SubjectRepository subjectRepository) {
        this.repository = subjectRepository;
    }

    public List<Subject> getAll() {
        return repository.findAll();
//        return List.of(
//                new Subject(1L, "Системы исксственного интелекта"),
//                new Subject(2L, "Математический анализ")
//        );
    }
}
