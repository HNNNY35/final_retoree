package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.CarDetailService;

@Controller
public class Car_detailController {
    @Autowired
    CarDetailService carDetailService;

    @RequestMapping(value = "/car_detail_change")
    public ModelAndView car_detail(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = carDetailService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("car/car_detail_change");
        return modelAndView;

    }

    @RequestMapping(value = "/car_reg")
    public ModelAndView car_reg(ModelAndView modelAndView) {
        modelAndView.setViewName("car/car_reg");
        return modelAndView;

    }

}
