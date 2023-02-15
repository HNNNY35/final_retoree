package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping(value = "/main_search")
    public ModelAndView signup(ModelAndView modelAndView) {
        modelAndView.setViewName("/main_search");
        return modelAndView;

    }

}
