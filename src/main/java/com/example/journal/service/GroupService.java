package com.example.journal.service;

import com.example.journal.domain.Group;
import com.example.journal.repository.GroupRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class GroupService {

    private final GroupRepository repository;

    public List<Group> getAll() {
        return repository.findAll();
    }
}
