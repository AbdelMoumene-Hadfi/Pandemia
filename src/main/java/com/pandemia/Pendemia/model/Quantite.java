package com.pandemia.Pendemia.model;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "quantite")
@IdClass(QuantiteKey.class)
public class Quantite {
    @Id
    @Column(name = "ID_PRODUIT" , columnDefinition = "BINARY(16)")
    private UUID Produit;
    @Id
    @Column(name = "ID_MAGAZIN" , columnDefinition = "BINARY(16)")
    private UUID MAGAZIN;
    @Column(name = "Quantite_PRODUIT")
    private int Quantite;
    @Column(name = "Prix_PRODUIT")
    private float Prix;

    public Quantite() {}

    public Quantite(UUID Produit,UUID MAGAZIN,int Quantite,int Prix) {
        this.MAGAZIN = MAGAZIN ;
        this.Produit = Produit ;
        this.Quantite = Quantite ;
        this.Prix = Prix ;
    }

    public float getPrix() {
        return Prix;
    }

    public void setPrix(float prix) {
        Prix = prix;
    }

    public int getQuantite() {
        return Quantite;
    }

    public void setQuantite(int quantite) {
        Quantite = quantite;
    }

    public UUID getProduit() {
        return Produit;
    }

    public void setProduit(UUID produit) {
        Produit = produit;
    }

    public UUID getMAGAZIN() {
        return MAGAZIN;
    }

    public void setMAGAZIN(UUID MAGAZIN) {
        this.MAGAZIN = MAGAZIN;
    }

}
