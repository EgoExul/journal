package com.example.journal.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.Period;
import java.util.List;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "subjects")
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    @ManyToMany(mappedBy = "subjects")
    @ToString.Exclude
    private List<Group> groups;
    @OneToMany(mappedBy = "subject")
    private Set<Score> scores;
    private Period period;
    @ManyToMany
    @JoinTable(
            name = "subject_user",
            joinColumns = @JoinColumn(name = "subject_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private Set<User> users;

}
