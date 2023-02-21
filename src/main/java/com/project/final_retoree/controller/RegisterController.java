package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

    @RequestMapping(value = "/register_new_1")
    public ModelAndView register_new_1(ModelAndView modelAndView) {
        modelAndView.setViewName("login_register/register_new_1");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_2")
    public ModelAndView register_new_2(ModelAndView modelAndView) {
        modelAndView.setViewName("login_register/register_new_2");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_3")
    public ModelAndView register_new_3(ModelAndView modelAndView) {
        modelAndView.setViewName("login_register/register_new_3");
        return modelAndView;

    }

}
