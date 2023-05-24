package com.example.journal.controller;

import com.example.journal.domain.Group;
import com.example.journal.domain.Subject;
import com.example.journal.domain.User;
import com.example.journal.service.GroupService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class TestController {

    private final UserService userService;
    private final SubjectService subjectService;
    private final GroupService groupService;

    @RequestMapping("users")
    public List<User> getUsers() {
        return userService.getAll();
    }

    @RequestMapping("subjects")
    public List<Subject> getSubjects() {
        return subjectService.getAll();
    }

    @RequestMapping("groups")
    public List<Group> getGroups() {
        return groupService.getAll();
    }
}

