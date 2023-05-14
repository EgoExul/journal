package com.example.journal.service;

import com.example.journal.domain.User;
import com.example.journal.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository repository;

    public List<User> getAll() {
        return repository.findAll();
    }
}
