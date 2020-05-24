package com.pandemia.Pendemia.controllers;

import com.pandemia.Pendemia.Repository.UserRespository;
import com.pandemia.Pendemia.Repository.User_RoleRespository;
import com.pandemia.Pendemia.model.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@RequestMapping("api/v1/user")
@RestController
public class UserController {
    @Autowired
    private UserRespository userRespository ;
    private User_RoleRespository user_roleRespository ;


    @PostMapping("/add")
    public void addUser(@RequestBody Map<String , String> body) {
         User user = new User(body.get("email"),body.get("name"),body.get("password"),body.get("addresse"),body.get("ville"),body.get("telephone"));
         userRespository.save(user);
    }

    @PostMapping("/show")
    public Optional<User> getUserbyId(@RequestBody Map<String , UUID> body) {
        return userRespository.findById(body.get("id"));
    }

    @PostMapping("/login")
    public Optional<User> login(@RequestBody Map<String , String> body) {
        System.out.println(body);
        return userRespository.findByEmail(body.get("email"));
    }

    @GetMapping("/all")
    public List<User> getAllUser() {
        return userRespository.findAll();
    }
}
