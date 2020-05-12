package com.pandemia.Pendemia.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(name = "ID_USER" , columnDefinition = "BINARY(16)")
    private UUID Id;
    @Column(name = "Email_USER")
    private String Email;
    @Column(name = "Name_USER")
    private String Name;
    @Column(name = "Password_USER")
    private String Password;
    @Column(name = "Adresse_USER")
    private String Adresse;
    @Column(name = "Categorie_USER")
    private String Categorie;
    @Column(name = "Telephone_USER")
    private String Telephone;

    public User() {}

    public  User(UUID Id,String Email,String Name) {
        this.Id = Id;
        this.Email = Email;
        this.Name = Name;
    }

    public User(String Email,String Name,String Password,String Adresse,String Categorie,String Telephone) {
        this.Email = Email;
        this.Name = Name;
        this.Password = Password ;
        this.Adresse = Adresse ;
        this.Categorie = Categorie ;
        this.Telephone = Telephone ;
    }

    public UUID getId() {
        return Id;
    }

    public String getAdresse() {
        return Adresse;
    }

    public String getEmail() {
        return Email;
    }

    public String getName() {
        return Name;
    }

    public String getPassword() {
        return Password;
    }

    public String getTelephone() {
        return Telephone;
    }

    public String getCategorie() {
        return Categorie;
    }

    public void setId(UUID id) {
        Id = id;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setTelephone(String telephone) {
        Telephone = telephone;
    }

    public void setAdresse(String adresse) {
        Adresse = adresse;
    }

    public void setCategorie(String categorie) {
        Categorie = categorie;
    }
}





