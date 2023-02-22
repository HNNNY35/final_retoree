package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.RegisterService;

@Controller
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @RequestMapping(value = { "/register_agree" }, method = RequestMethod.POST)
    public ModelAndView register_agree(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = registerService.insertagree(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("login_register/register_new_1");
        return modelAndView;

    }

    @RequestMapping(value = { "/register" }, method = RequestMethod.GET)
    public ModelAndView register(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // Object resultMap = registerService.insertregister(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("login_register/register_new_2");
        return modelAndView;

    }

    @RequestMapping(value = "/register_new_3")
    public ModelAndView register_new_3(ModelAndView modelAndView) {
        modelAndView.setViewName("login_register/register_new_3");
        return modelAndView;

    }

}
