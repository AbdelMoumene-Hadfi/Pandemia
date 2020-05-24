package com.pandemia.Pendemia.controllers;


import com.pandemia.Pendemia.Repository.Telephone_MagazinRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("api/v1/magazin")
@RestController
public class MagazinController {
    @Autowired
    private MagazinController magazinController ;
    private Telephone_MagazinRespository telephone_magazinRespository ;


}
