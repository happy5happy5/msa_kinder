package com.msa.kindergarden.repository;

import com.msa.kindergarden.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, String> {
//    User findByUserId(String userId);
}