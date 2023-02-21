package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.MainService;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    // @RequestMapping(value = { "", "/", "/main_search" })
    // public ModelAndView signup(ModelAndView modelAndView) {
    // modelAndView.setViewName("main_search");
    // return modelAndView;

    // }

    @GetMapping(value = { "/main" })
    public ModelAndView main(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = mainService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("main_search");
        return modelAndView;
    }
}