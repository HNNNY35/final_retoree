package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {
    @RequestMapping(value = { "/main_search" })
    public void main_search() {
        int i = 0;

    }

    // @RequestMapping(value = { "/**" })
    // public void byPass() {
    // int i = 0;

    // }

    @RequestMapping(value = { "/users/login" })
    public void login() {
        int i = 0;

    }

    @RequestMapping(value = { "/users/price_check" })
    public void price_check() {
        int i = 0;

    }

}
