package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.RegisterService;
import com.project.final_retoree.utils.CommonUtils;

@Controller
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @Autowired
    CommonUtils commonUtils;

    // @RequestMapping(value = { "/register_agree" }, method = RequestMethod.GET) //
    // public ModelAndView register_agree(@RequestParam Map<String, Object> params,
    // ModelAndView modelAndView) {
    // // Object resultMap = registerService.insertagree(params);
    // // modelAndView.addObject("resultMap", resultMap);
    // modelAndView.setViewName("login_register/register_new_1");
    // return modelAndView;

    // }
    // 회원가입페이지
    @RequestMapping(value = { "/register" }, method = RequestMethod.GET) // 회원가입페이지
    public ModelAndView register(ModelAndView modelAndView) {
        // params.put("USER_ID", "U03");
        // registerService.insertregister(params);
        modelAndView.setViewName("login_register/register_new_2");
        return modelAndView;

    }

    // 회원가입완료페이지
    @RequestMapping(value = { "/register_welcome" }, method = RequestMethod.POST) // 회원가입완료(환영페이지)
    public ModelAndView register_new_3(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        params.put("USER_ID", commonUtils.getUniqueSequence());
        registerService.insertregister(params);
        modelAndView.setViewName("login_register/register_new_3");
        return modelAndView;

    }

}
