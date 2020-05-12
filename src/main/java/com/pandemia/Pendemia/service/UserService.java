package com.pandemia.Pendemia.service;

import com.pandemia.Pendemia.dao.UserDAO;
import com.pandemia.Pendemia.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserService {
    private UserDAO userDAO;

    @Autowired
    public UserService(@Qualifier("fakeDao") UserDAO userDAO) {
        this.userDAO = userDAO ;
    }

    public int addUser(User user) {

        return userDAO.insertUser(user);
    }

    public List<User> getAllUser() {
        return userDAO.selectAllPeople();
    }
}
