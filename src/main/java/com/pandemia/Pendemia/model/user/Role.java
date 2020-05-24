package com.pandemia.Pendemia.model.user;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "role")
public class Role {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(name = "ID_ROLE" , columnDefinition = "BINARY(16)")
    private UUID Id;
    @Column(name = "Name_ROLE")
    private String Name;

    public Role() {}

    public Role(UUID Id , String Name) {
        this.Id = Id ;
        this.Name = Name ;
    }

    public Role(String Name) {
        this.Name = Name ;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setId(UUID id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public UUID getId() {
        return Id;
    }
}
