package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @RequestMapping(value = "/login")
    public ModelAndView login(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/login");
        return modelAndView;

    }

    @RequestMapping(value = "/myPage")
    public ModelAndView myPage(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/myPage");
        return modelAndView;

    }

    @RequestMapping(value = "/myPage_modify")
    public ModelAndView myPage_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/myPage_modify");
        return modelAndView;

    }

    @RequestMapping(value = "/price_check")
    public ModelAndView price_check(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/price_check");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_1")
    public ModelAndView register_new_1(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/register_new_1");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_2")
    public ModelAndView register_new_2(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/register_new_2");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_3")
    public ModelAndView register_new_3(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/register_new_3");
        return modelAndView;

    }

    @RequestMapping(value = "/search")
    public ModelAndView search(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/search");
        return modelAndView;

    }

    @RequestMapping(value = "/visit_reserve")
    public ModelAndView visit_reserve(ModelAndView modelAndView) {
        modelAndView.setViewName("/users/visit_reserve");
        return modelAndView;

    }

}