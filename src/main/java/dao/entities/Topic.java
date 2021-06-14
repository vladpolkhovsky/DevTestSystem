package dao.entities;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "topic")
@Getter @Setter @RequiredArgsConstructor @ToString
public class Topic {

    @Column(name = "topicid")
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    int topicId;

    @Column(name = "description", length = 100)
    String description;

    @Column(name = "name", length = 20)
    String name;

    @OneToMany(mappedBy = "topic", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude private Set<Test> tests;

}
