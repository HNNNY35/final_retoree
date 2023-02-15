package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {

    @RequestMapping(value = { "/**" })
    public void byPass() {
        int i = 0;

    }

}
