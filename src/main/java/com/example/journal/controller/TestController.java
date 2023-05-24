package com.example.journal.controller;

import com.example.journal.domain.User;
import com.example.journal.repository.UserRepository;
import com.example.journal.service.GroupService;
import com.example.journal.service.SubjectService;
import com.example.journal.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequiredArgsConstructor
@Controller
public class TestController {

    private final SubjectService subjectService;
    private final GroupService groupService;
    private final UserService userService;
    private final UserService roleService;

    @RequestMapping("/")
    public String homePage(Model model) {
        model.addAttribute("subjects", subjectService.getAll());
        model.addAttribute("groups", groupService.getAll());
        model.addAttribute("users", userService.getAll());
        model.addAttribute("roles", roleService.getAll());
        return "term2si";
    }

//@Controller
//public class UserController {
//    @Autowired
//    private UserRepository userRepository;
//
//    @GetMapping("/")
//    public String getUserById(@PathVariable("id") Long id, Model model) {
//        User user = UserRepository.findById(id).orElse(null);
//        if (user != null) {
//            model.addAttribute("users", userService.getAll());
//        }
//        return "user";
//    }
//}

    @RequestMapping("auth")
    public String auth(Model model) {
        return "auth";
    }

}

