package com.pandemia.Pendemia.model.magazin;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "telephone_magazin")
public class Telephone_Magazin {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(name = "ID_TELEPHONE" , columnDefinition = "BINARY(16)")
    private UUID Id;
    @Column(name = "ID_MAGAZIN" , columnDefinition = "BINARY(16)")
    private UUID Magazin;
    @Column(name = "Telephone_MAGAZIN")
    private String Telephone;

    public Telephone_Magazin() {}

    public Telephone_Magazin(UUID Magazin,String Telephone) {
        this.Magazin = Magazin ;
        this.Telephone = Telephone ;
    }

    public Telephone_Magazin(UUID Id,UUID Magazin,String Telephone) {
        this.Id = Id ;
        this.Magazin = Magazin ;
        this.Telephone = Telephone ;
    }

    public void setId(UUID id) {
        Id = id;
    }

    public UUID getId() {
        return Id;
    }

    public void setTelephone(String telephone) {
        Telephone = telephone;
    }

    public String getTelephone() {
        return Telephone;
    }

    public UUID getMagazin() {
        return Magazin;
    }

    public void setMagazin(UUID magazin) {
        Magazin = magazin;
    }
}
