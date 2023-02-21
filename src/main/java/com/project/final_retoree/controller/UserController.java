package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @RequestMapping(value = "/login")
    public ModelAndView login(ModelAndView modelAndView) {
        modelAndView.setViewName("login_register/login");
        return modelAndView;

    }

    @RequestMapping(value = "/myPage")
    public ModelAndView myPage(ModelAndView modelAndView) {
        modelAndView.setViewName("myPage/myPage");
        return modelAndView;

    }

    @RequestMapping(value = "/myPage_modify")
    public ModelAndView myPage_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("myPage/myPage_modify");
        return modelAndView;

    }

    @RequestMapping(value = "/price_check")
    public ModelAndView price_check(ModelAndView modelAndView) {
        modelAndView.setViewName("users_ etc/price_check");
        return modelAndView;

    }

    @RequestMapping(value = "/search")
    public ModelAndView search(ModelAndView modelAndView) {
        modelAndView.setViewName("users_ etc/search");
        return modelAndView;

    }

    @RequestMapping(value = "/visit_reserve")
    public ModelAndView visit_reserve(ModelAndView modelAndView) {
        modelAndView.setViewName("users_ etc/visit_reserve");
        return modelAndView;

    }

}
