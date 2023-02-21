package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.SearchService;

@Controller
public class UserController {
    @Autowired
    SearchService searchService;
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

    @RequestMapping(value = {"/search"}, method = RequestMethod.GET)
    public ModelAndView searchGet(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = searchService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("users_ etc/search");
        return modelAndView;

    }

    @RequestMapping(value = {"/search"}, method = RequestMethod.POST)
    public ModelAndView searchPost(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = searchService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("users_ etc/search");
        return modelAndView;

    }

    @RequestMapping(value = "/visit_reserve")
    public ModelAndView visit_reserve(ModelAndView modelAndView) {
        modelAndView.setViewName("users_ etc/visit_reserve");
        return modelAndView;

    }

}
