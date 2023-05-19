package com.msa.kindergarden.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//@RestController
@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping("")
    public String home(Model model){
        System.out.println("[HOME CONTROLLER]......");
        model.addAttribute("message","Hello, World!");
        return "homepage";
    }
    @GetMapping("/mypage")
    public String mypageTo(Model model){
        System.out.println("[HOME CONTROLLER]mypage...");
        return "pages/mypage";
    }
}
