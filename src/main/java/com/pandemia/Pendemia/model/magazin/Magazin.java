package com.pandemia.Pendemia.model.magazin;

import org.apache.tomcat.jni.Address;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Time;
import java.util.UUID;

@Entity
@Table(name = "magazin")
public class Magazin {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(name = "ID_MAGAZIN" , columnDefinition = "BINARY(16)")
    private UUID Id;
    @Column(name = "Label_MAGAZIN")
    private String Label;
    @Column(name = "Address_MAGAZIN")
    private String Address ;
    @Column(name = "Ville_MAGAZIN")
    private String Ville ;
    @Column(name = "Type_MAGAZIN", columnDefinition = "BINARY(16)")
    private UUID Type ;
    @Column(name = "DebutTravail_MAGAZIN", columnDefinition = "time")
    private Time DebutTravail ;
    @Column(name = "FinTravail_MAGAZIN", columnDefinition = "time")
    private Time FinTravail ;
    @Column(name = "Id_USER", columnDefinition = "BINARY(16)")
    private UUID User ;

    public Magazin() {}

    public Magazin(UUID User,UUID Type,String Label,String Address,String Ville,Time DebutTravail,Time FinTravail ) {
        this.User = User ;
        this.Address = Address ;
        this.Label = Label ;
        this.Type = Type ;
        this.Ville = Ville ;
        this.DebutTravail = DebutTravail;
        this.FinTravail = FinTravail ;
    }

    public Magazin(UUID Id,UUID User,UUID Type,String Label,String Address,String Ville,Time DebutTravail,Time FinTravail ) {
        this.Id = Id ;
        this.User = User ;
        this.Address = Address ;
        this.Label = Label ;
        this.Type = Type ;
        this.Ville = Ville ;
        this.DebutTravail = DebutTravail;
        this.FinTravail = FinTravail ;
    }

    public void setId(UUID id) {
        Id = id;
    }

    public UUID getId() {
        return Id;
    }

    public void setLabel(String label) {
        Label = label;
    }

    public String getLabel() {
        return Label;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getVille() {
        return Ville;
    }

    public void setVille(String ville) {
        Ville = ville;
    }

    public UUID getUser() {
        return User;
    }

    public void setUser(UUID user) {
        User = user;
    }

    public UUID getType() {
        return Type;
    }

    public void setType(UUID type) {
        Type = type;
    }

    public Time getDebutTravail() {
        return DebutTravail;
    }

    public void setDebutTravail(Time debutTravail) {
        DebutTravail = debutTravail;
    }

    public Time getFinTravail() {
        return FinTravail;
    }

    public void setFinTravail(Time finTravail) {
        FinTravail = finTravail;
    }
}
