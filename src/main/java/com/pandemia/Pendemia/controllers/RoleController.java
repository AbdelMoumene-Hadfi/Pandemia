package com.pandemia.Pendemia.controllers;

import com.pandemia.Pendemia.Repository.RoleRespository;
import com.pandemia.Pendemia.model.user.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RequestMapping("api/v1/role")
@RestController
public class RoleController {
    @Autowired
    private RoleRespository roleRespository ;

    @PostMapping("/add")
    public void addUser(@RequestBody Map<String , String> body) {
        Role role = new Role(body.get("name"));
        roleRespository.save(role);
    }

    @GetMapping("/all")
    public List<Role> getAllRole() {
        return roleRespository.findAll();
    }
}