package com.smile.amazon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping(value = "user/")
@Controller
public class UserController {

    @RequestMapping(value = "login")
    public String login(){
        return "index/login";
    }

    public String doLogin(){
        return "";
    }


}
