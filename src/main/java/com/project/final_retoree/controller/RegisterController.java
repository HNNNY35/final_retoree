package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.RegisterService;
import com.project.final_retoree.utils.CommonUtils;

@Controller
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @Autowired
    CommonUtils commonUtils;

    // 회원가입약관동의
    @RequestMapping(value = { "/registeragree" })
    public ModelAndView register_agree(ModelAndView modelAndView) {
        modelAndView.setViewName("register/register_new_1");
        return modelAndView;
    }

    // 회원가입
    @RequestMapping(value = { "/register" }, method = RequestMethod.POST)
    public ModelAndView register(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object ts_cs_id = registerService.insertagree(params);
        modelAndView.addObject("ts_cs_id", ts_cs_id);
        modelAndView.setViewName("register/register_new_2");
        return modelAndView;
    }

    // 회원가입완료
    @RequestMapping(value = { "/register_welcome" }, method = RequestMethod.POST)
    public ModelAndView register_welcome(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        params.put("USER_ID", commonUtils.getUniqueSequence());
        registerService.insertregister(params);
        modelAndView.setViewName("register/register_new_3");
        return modelAndView;
    }

}
