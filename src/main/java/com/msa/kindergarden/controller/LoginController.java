package com.msa.kindergarden.controller;


import com.msa.kindergarden.domain.User;
import com.msa.kindergarden.security.JwtTokenProvider;
import com.msa.kindergarden.service.UserService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.crypto.SecretKey;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private final UserService userService;
    private final JwtTokenProvider jwtTokenProvider;

    @Value("${jwt.secret}")
    private String jwtSecret;

    public LoginController(UserService userService, JwtTokenProvider jwtTokenProvider) {
        this.userService = userService;
        this.jwtTokenProvider = jwtTokenProvider;
    }

    @GetMapping("/login")
    public String getLoginPage(Model model, @RequestParam(value = "error", required = false) String error) {
        if (error != null) {
            model.addAttribute("error", "Invalid username or password!");
        }
        return "pages/login";
    }

    @PostMapping("/login")
    public String submitLoginForm(@RequestParam("username") String username,
                                  @RequestParam("password") String password,
                                  HttpServletResponse response,
                                  RedirectAttributes attributes) {
        User user = userService.getUserById(username);
        if (user != null && user.getUserPw().equals(password)) {
            SecretKey key = Keys.hmacShaKeyFor(jwtSecret.getBytes());
            Claims claims = Jwts.claims();
            claims.put("username", username);

            String token = jwtTokenProvider.generateToken(claims);

            Cookie cookie = new Cookie("token", token);
            cookie.setPath("/");
            cookie.setMaxAge(60 * 60 * 24 * 7); // 1주일 동안 유효
            response.addCookie(cookie);
            return "redirect:/";
        } else {
            attributes.addAttribute("error", "Invalid username or password!");
            return "redirect:/login";
        }
    }
}

