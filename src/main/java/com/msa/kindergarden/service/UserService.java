package com.msa.kindergarden.service;

import com.msa.kindergarden.domain.User;

import java.util.List;


public interface UserService {

    User createUser(User user);

    User getUserById(String userId);

    List<User> getAllUsers();

    User updateUser(User user);

    void deleteUser(String userId);

    User getUserByToken(String token);
}
