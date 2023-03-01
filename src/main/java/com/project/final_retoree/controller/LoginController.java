package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    // 로그인
    @RequestMapping(value = "/loginform")
    public ModelAndView loginform(ModelAndView modelAndView) {
        modelAndView.setViewName("login/loginform");
        return modelAndView;
    }

    @RequestMapping(value = "/logoutform", method = RequestMethod.GET)
    public ModelAndView logoutform(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        modelAndView.setViewName("login/logoutform");
        return modelAndView;
    }
}
