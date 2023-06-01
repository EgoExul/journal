package com.example.journal.service;

import com.example.journal.domain.Score;
import com.example.journal.repository.ScoreRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class ScoreService {

    private final ScoreRepository repository;

    public List<Score> getByUserIdAndSubjectId(Long userId, Long subjectId) {
        return repository.findByUserIdAndSubjectId(userId, subjectId);
    }
}