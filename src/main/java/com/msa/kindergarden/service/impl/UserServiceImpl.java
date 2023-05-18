package com.msa.kindergarden.service.impl;

import com.msa.kindergarden.domain.User;
import com.msa.kindergarden.repository.UserRepository;
import com.msa.kindergarden.security.JwtTokenProvider;
import com.msa.kindergarden.service.UserService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    private final JwtTokenProvider jwtTokenProvider;

    private final UserRepository userRepository;

    // 생성자를 통한 주입
    public UserServiceImpl(JwtTokenProvider jwtTokenProvider, UserRepository userRepository) {
        this.jwtTokenProvider = jwtTokenProvider;
        this.userRepository = userRepository;
    }


    public User createUser(User user) {
        return userRepository.save(user);
    }


    public User getUserById(String userId) {
        Optional<User> optionalUser = userRepository.findById(userId);
        return optionalUser.orElse(null);
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

    public User getUserByToken(String token) {
        Claims claims = Jwts.parser()
                .setSigningKey(jwtTokenProvider.getSecretKey())
                .parseClaimsJws(token)
                .getBody();
        String userId = claims.getSubject();
        return userRepository.findById(userId).orElse(null);
    }

}
