package com.example.labo3.repository;

import com.example.labo3.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRep extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
