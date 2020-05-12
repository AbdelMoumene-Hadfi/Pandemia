package com.pandemia.Pendemia.dao;

import com.pandemia.Pendemia.model.User;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Repository("fakeDao")
public class FakeUserData implements UserDAO {

    private static List<User> DB = new ArrayList<>() ;

    @Override
    public int insertUser(UUID Id , User user) {
        //DB.add(new User(Id,user.getEmail(),user.getName()));
        return 1;
    }

    @Override
    public List<User> selectAllPeople() {
        return DB;
    }

}
