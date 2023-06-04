package com.example.journal.service;

import com.example.journal.domain.User;
import com.example.journal.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import java.util.*;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository repository;

    public List<User> getAll() {
        return repository.findAll();
    }

    public User getById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new ResourceAccessException("User not found, id: " + id));
    }

    public List<User> getByGroupAndSubject(Long groupId, Long subjectId) {
        var students = repository.findByGroupsInAndRole(
                Collections.singletonList(groupId), User.Role.STUDENT
        );
        students.forEach(u -> u.setScores(u.getScores().stream()
                .filter(s -> s.getSubject().getId().equals(subjectId))
                .sorted(Comparator.comparing(s -> s.getControl().getId()))
                .collect(Collectors.toCollection(LinkedHashSet::new))));
        return students;
    }

    public User getByEmail(String email, String password) {
        Optional<User> optionalUser = repository.findByEmail(email);
        if (optionalUser.isPresent() && optionalUser.get().getPassword().equals(password)) {
            return optionalUser.get();
        }

        return new User();
    }

}
