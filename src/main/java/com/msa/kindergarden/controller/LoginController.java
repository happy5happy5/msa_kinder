package com.msa.kindergarden.controller;

import com.msa.kindergarden.domain.User;
import com.msa.kindergarden.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

    @Autowired
    private final UserService userService;

    public LoginController(UserService userService) {
        this.userService = userService;
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
                                  RedirectAttributes attributes) {
        User user = userService.getUserById(username);
        if (user != null && user.getUserPw().equals(password)) {
            return "redirect:/";
        } else {
            attributes.addAttribute("error", "Invalid username or password!");
            return "redirect:/login";
        }
    }

}
