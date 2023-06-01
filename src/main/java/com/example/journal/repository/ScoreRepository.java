package com.example.journal.repository;

import com.example.journal.domain.Score;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Long> {
        List<Score> findByUserIdAndSubjectId(Long userId, Long subjectId);
}
