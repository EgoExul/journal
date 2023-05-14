package com.example.journal.service;

import com.example.journal.domain.Subject;
import com.example.journal.repository.SubjectRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class SubjectService {

    private final SubjectRepository repository;

    public List<Subject> getAll() {
        return repository.findAll();
    }
}
