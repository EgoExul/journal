package com.example.journal.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.Instant;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "scores")
public class Score {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "`value`")
    private Integer value;
    @ManyToOne
    @JoinColumn(name = "control_id")
    private Control control;
    @Column(name = "pass_date")
    private Instant passDate;

    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "subject_id")
    private Subject subject;

    @Transient
    private boolean slacker;

    public boolean isSlacker() {
        return control.getDueDate().isBefore(Instant.now())
                && passDate == null
                && value == null;
    }

}
