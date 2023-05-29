package com.example.journal.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

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

    public enum Type {
        TEST,
        LAB,
        EXAM,
        PRACTICE,
        ATTENDANCE;
    }
}
