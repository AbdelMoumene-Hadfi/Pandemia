package com.pandemia.Pendemia.model;

import java.util.UUID;

public class User {
    private UUID Id;
    private String Email;
    private String Name;
    private String Password;
    private String Adresse;
    private String Categorie;
    private String Telephone;

    public User(UUID Id, String Email, String Name) {
        this.Id = Id;
        this.Email = Email;
        this.Name = Name;
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





