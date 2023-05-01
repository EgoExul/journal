package com.example.journal.service;

import com.example.journal.domain.Role;
import com.example.journal.domain.Subject;
import com.example.journal.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {
    private final RoleRepository repository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.repository = roleRepository;
    }

    public List<Role> getAll() {
        return List.of(
                new Role(1L, "Студент"),
                new Role(2L, "Преподователь")
        );
    }
}
