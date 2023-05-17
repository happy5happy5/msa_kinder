package com.msa.kindergarden.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class HomeController {

    @GetMapping("")
    public String home(Model model){
        System.out.println("home controller");
        model.addAttribute("message","Hello, World!");
        return "home";
    }
}
