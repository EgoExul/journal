package com.example.journal.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "middle_name")
    private String middleName;
    @Column(name = "last_name")
    private String lastName;
    private String email;
    private String password;
    @Enumerated(EnumType.STRING)
    private Role role;
    @ManyToMany(mappedBy = "users")
    private Set<Group> groups;
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private Set<Score> scores;
    @ManyToMany(mappedBy = "users")
    private Set<Subject> subjects;

    public enum Role {
        TEACHER,
        STUDENT;
    }

}
