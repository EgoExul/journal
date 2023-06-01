package com.example.journal.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.Instant;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "controls")
public class Control {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "due_date")
    private Instant dueDate;
    @Enumerated(EnumType.STRING)
    private Type type;
    @ToString.Exclude
    @ManyToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;
    @ToString.Exclude
    @OneToMany(mappedBy = "control")
    private List<Score> scores;

    @Getter
    @RequiredArgsConstructor
    public enum Type {

        TEST("Тест"),
        LAB("Лаба"),
        EXAM("Экзамен"),
        PRACTICE("Практика"),
        ATTENDANCE("Посещаемость");

        private final String name;
    }
}
