package com.msa.kindergarden.service.impl;

import com.msa.kindergarden.domain.User;
import com.msa.kindergarden.repository.UserRepository;
import com.msa.kindergarden.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;


    public User createUser(User user) {
        return userRepository.save(user);
    }


    public User getUserById(String userId) {
        Optional<User> optionalUser = userRepository.findById(userId);
        return optionalUser.get();
    }


    public List<User> getAllUsers() {
        return userRepository.findAll();
    }


    public User updateUser(User user) {
        User existingUser = userRepository.findById(user.getUserId()).get();
        existingUser.setUserId(user.getUserId());
        existingUser.setUserPw(user.getUserPw());
        existingUser.setEmail(user.getEmail());
        existingUser.setPhone(user.getPhone());
        User updatedUser = userRepository.save(existingUser);
        return updatedUser;
    }


    public void deleteUser(String userId) {
        userRepository.deleteById(userId);
    }
}
