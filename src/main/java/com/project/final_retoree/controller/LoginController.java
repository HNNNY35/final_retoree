package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    // 로그인
    @GetMapping("/loginform")
    public ModelAndView loginform(ModelAndView modelAndView) {
        String viewName = "/login/loginform";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // 로그아웃
    @GetMapping("/logoutform")
    public ModelAndView logoutform(ModelAndView modelAndView) {
        String viewName = "/login/logoutform";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // 일반회원
    @GetMapping({ "/user/read" }) // ROLE_USER or ROLE_ADMIN
    public ModelAndView user(ModelAndView modelAndView) {
        String viewName = "/user/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // 딜러
    @GetMapping({ "/dealer/read" }) // ROLE_DEALER or ROLE_ADMIN
    public ModelAndView dealer(ModelAndView modelAndView) {
        String viewName = "/dealer/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // 어드민
    @GetMapping({ "/admin/read" }) // ROLE_ADMIN
    public ModelAndView admin(ModelAndView modelAndView) {
        String viewName = "/admin/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

}
