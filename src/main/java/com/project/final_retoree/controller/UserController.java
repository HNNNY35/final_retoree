package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
   

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

    @RequestMapping(value = "/visit_reserve")
    public ModelAndView visit_reserve(ModelAndView modelAndView) {
        modelAndView.setViewName("users_ etc/visit_reserve");
        return modelAndView;

    }

}
