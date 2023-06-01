package com.example.journal.service;

import com.example.journal.domain.Group;
import com.example.journal.domain.Score;
import com.example.journal.domain.Subject;
import com.example.journal.domain.User;
import com.example.journal.repository.ScoreRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import java.util.Collections;
import java.util.List;

@RequiredArgsConstructor
@Service
public class ScoreService {

    private final ScoreRepository repository;

    public List<Score> getAll() {
        return repository.findAll();
    }

    public List<Score> getByUserId(Long userId) {
        return repository.findByUserId(userId);
    }

    public List<Score> getByUserIdAndSubjectId(Long userId, Long subjectId) {
        return repository.findByUserIdAndSubjectId(userId, subjectId);
    }
}