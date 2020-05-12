package com.pandemia.Pendemia.Repository;

import com.pandemia.Pendemia.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRespository extends JpaRepository<User, UUID> {
    Optional<User> findById(UUID Id);

}
