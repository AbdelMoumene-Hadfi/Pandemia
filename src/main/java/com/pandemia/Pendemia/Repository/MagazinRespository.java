package com.pandemia.Pendemia.Repository;

import com.pandemia.Pendemia.model.magazin.Magazin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface MagazinRespository extends JpaRepository<Magazin, UUID> {
}
