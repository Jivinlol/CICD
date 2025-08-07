package com.example.CICD.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String getHome(){
        return "Welcome to the Home Page of the Website";
    }
    @GetMapping("/add5/{id}")
    public String addFive(@PathVariable Integer id){
        int b = id+5;
        return Integer.toString(b);
    }

    @GetMapping("/add10/{id}")
    public String addTen(@PathVariable Integer id){
        int b = id+10;
        return Integer.toString(b);
    }
}
