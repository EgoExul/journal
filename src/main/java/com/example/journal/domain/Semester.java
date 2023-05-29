package com.example.journal.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.Instant;
import java.util.List;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "semesters")
public class Semester {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Instant start;
    @Column(name = "`end`")
    private Instant end;
    private int number;
    @Column(name = "`year`")
    private int year;

    @OneToMany(mappedBy = "semester")
    private List<Subject> subjects;
}
