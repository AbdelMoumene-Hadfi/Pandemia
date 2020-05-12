package com.pandemia.Pendemia.dao;

import com.pandemia.Pendemia.model.User;

import java.util.List;
import java.util.UUID;

public interface UserDAO {
    int insertUser(UUID Id , User user );
    default int insertUser(User user) {
        UUID id = UUID.randomUUID();
        return insertUser(id , user);
    }

    List<User> selectAllPeople();
}
