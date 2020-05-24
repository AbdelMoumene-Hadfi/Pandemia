package com.pandemia.Pendemia.controllers;

import com.pandemia.Pendemia.Repository.Image_ProduitRespository;
import com.pandemia.Pendemia.Repository.ProduitRespository;
import com.pandemia.Pendemia.model.produit.Image_Produit;
import com.pandemia.Pendemia.model.produit.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@RequestMapping("api/v1/produit")
@RestController
public class ProduitController {
    @Autowired
    private ProduitRespository produitRespository ;
    private Image_ProduitRespository image_produitRespository ;

    @PostMapping("/add")
    public Produit addProduit(@RequestBody Map<String , String> body) {
        Produit produit = new Produit(body.get("label"),body.get("description"));
        Produit Re_produit = produitRespository.save(produit);
        return Re_produit;

    }

    @PostMapping("/add_img")
    public void addImage(@RequestBody Map<String , String> body) {
        Image_Produit image_produit = new Image_Produit(UUID.fromString(body.get("id")),body.get("url"));
        image_produitRespository.save(image_produit);
    }

    @GetMapping("/")
    public Optional<Produit> getProduit(@RequestBody Map<String , UUID> body) {
        return produitRespository.findById(body.get("id"));
    }

    @GetMapping("/img")
    public Optional<Image_Produit> getImgProduit(@RequestBody Map<String , UUID> body) {
        return image_produitRespository.findByProduit(body.get("id"));
    }

}
