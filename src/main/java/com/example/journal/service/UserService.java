package com.example.journal.service;

import com.example.journal.domain.User;
import com.example.journal.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    private final UserRepository repository;

    @Autowired
    public UserService(UserRepository userRepository) {this.repository = userRepository;}

    public List<User> getAll() {
        return List.of(
                new User(1L, "Студент"),
                new User(2L, "Преподователь")
        );


    }
}
