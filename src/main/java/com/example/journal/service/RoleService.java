package com.example.journal.service;

import com.example.journal.domain.Role;
import com.example.journal.repository.RoleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class RoleService {

    private final RoleRepository repository;

    public List<Role> getAll() {
        return repository.findAll();
    }
}
