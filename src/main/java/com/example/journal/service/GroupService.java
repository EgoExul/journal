package com.example.journal.service;

import com.example.journal.domain.Group;
import com.example.journal.repository.GroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GroupService {
    private final GroupRepository repository;

    @Autowired
    public GroupService(GroupRepository repository) {
        this.repository = repository;
    }

    public List<Group> getAll() {
//        return repository.findAll();
        return List.of(
                new Group(1L, "ПИб-1903а"),
                new Group(2L, "ПИб-1803а")
        );
    }
}
