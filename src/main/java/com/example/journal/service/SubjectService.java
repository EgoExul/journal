package com.example.journal.service;

import com.example.journal.domain.Subject;
import com.example.journal.repository.SubjectRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import java.util.Collections;
import java.util.List;

@RequiredArgsConstructor
@Service
@Slf4j
public class SubjectService {

    private final SubjectRepository repository;

    public List<Subject> getAll() {
        return repository.findAll();
    }

    public Subject getById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new ResourceAccessException("Subject not found, id: " + id));
    }

    public List<Subject> getAllByUserId(Long userId) {
        return repository.findAllByUsersIn(Collections.singletonList(userId));
    }
}
