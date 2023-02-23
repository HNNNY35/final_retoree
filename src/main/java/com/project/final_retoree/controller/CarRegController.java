package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.CarRegService;

@Controller
public class CarRegController {
    @Autowired
    CarRegService carRegService;

    // url : http://localhost:8080/car_reg/u002
    @RequestMapping(value = "/car_reg/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView car_reg(@RequestParam Map<String, Object> params, @PathVariable String dealer_id, ModelAndView modelAndView) {
        modelAndView.setViewName("dealer/car_reg");
        return modelAndView;
    }

    @RequestMapping(value = "/car_reg_2", method = RequestMethod.POST)
    public ModelAndView car_reg_2(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        carRegService.insertOne(params);
        modelAndView.setViewName("dealer/car_reg_2");
        return modelAndView;
    }
}
