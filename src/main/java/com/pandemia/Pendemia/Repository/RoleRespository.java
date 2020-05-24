package com.pandemia.Pendemia.Repository;

import com.pandemia.Pendemia.model.user.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RoleRespository extends JpaRepository<Role,UUID> {
}
