package com.msa.kindergarden;

import com.msa.kindergarden.domain.User;
import com.msa.kindergarden.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;



@Component
public class DummyDataLoader implements CommandLineRunner {

    @Autowired
    private UserRepository userRepository;


    @Override
    public void run(String... args) {
        User user1 = User.builder()
                .userId("user1")
                .userName("User 1")
                .userPw("password1")
                .phone("010-1234-5671")
                .email("user1@example.com")
                .build();

        User user2 = User.builder()
                .userId("user2")
                .userName("User 2")
                .userPw("password2")
                .phone("010-1234-5672")
                .email("user2@example.com")
                .build();

        User user3 = User.builder()
                .userId("user3")
                .userName("User 3")
                .userPw("password3")
                .phone("010-1234-5673")
                .email("user3@example.com")
                .build();

        User user4 = User.builder()
                .userId("user4")
                .userName("User 4")
                .userPw("password4")
                .phone("010-1234-5674")
                .email("user4@example.com")
                .build();

        userRepository.save(user1);
        userRepository.save(user2);
        userRepository.save(user3);
        userRepository.save(user4);
    }
}
