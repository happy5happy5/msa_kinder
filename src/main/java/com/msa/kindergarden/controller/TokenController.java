package com.msa.kindergarden.controller;

import com.msa.kindergarden.security.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/api/token")
public class TokenController {
    @Autowired
    private JwtTokenProvider jwtTokenProvider;


    @PostMapping("/refresh")
    public ResponseEntity<?> refreshToken(@CookieValue("jwt_token") String token) {
        String newToken = jwtTokenProvider.refreshJwtToken(token);
        Cookie newCookie = new Cookie("jwt_token", newToken);
        newCookie.setMaxAge(60 * 60); // 1시간 유지
        return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, newCookie.toString()).build();
    }

    @GetMapping("/refresh")
    public ResponseEntity<?> refreshToken(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = WebUtils.getCookie(request, "jwt_token");
        if (cookie == null) {
            return ResponseEntity.badRequest().build();
        }

        String token = cookie.getValue();
        if (!jwtTokenProvider.validateToken(token)) {
            return ResponseEntity.badRequest().build();
        }

        String refreshedToken = jwtTokenProvider.refreshJwtToken(token);
        Cookie newCookie = new Cookie("jwt_token", refreshedToken);
        newCookie.setMaxAge(60 * 60 * 24);
        newCookie.setPath("/");
        response.addCookie(newCookie);

        return ResponseEntity.ok().build();
    }
}
