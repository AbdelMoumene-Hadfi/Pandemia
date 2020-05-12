package com.pandemia.Pendemia.api;

import com.pandemia.Pendemia.Repository.UserRespository;
import com.pandemia.Pendemia.model.User;
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


    /*public UserController(UserRespository userRespository) {
        this.userRespository = userRespository ;
    }*/

    @PostMapping("/add")
    public void addUser(@RequestBody Map<String , String> body) {
         User user = new User(body.get("email"),body.get("name"),body.get("password"),body.get("addresse"),body.get("categorie"),body.get("telephone"));
         userRespository.save(user);
    }

    @PostMapping("/show")
    public Optional<User> getUserbyId(@RequestBody Map<String , UUID> body) {
        return userRespository.findById(body.get("id"));
    }

    @GetMapping("/all")
    public List<User> getAllUser() {
        return userRespository.findAll();
    }
}
