package com.project.final_retoree.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

    // url : http://localhost:8080/car_reg/U002
    @RequestMapping(value = "/car_reg/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView car_reg(@RequestParam Map<String, Object> params, @PathVariable String dealer_id, ModelAndView modelAndView) {
        modelAndView.addObject("DEALER_ID", dealer_id);
        modelAndView.setViewName("dealer/car_reg");
        return modelAndView;
    }

    @RequestMapping(value = "/car_reg_submit", method = RequestMethod.POST)
    public ModelAndView car_reg_submit(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object car_dtl_id = carRegService.insertCarDetail(params);
        modelAndView.addObject("car_dtl_id", car_dtl_id);
        modelAndView.setViewName("dealer/car_reg_submit");

        return modelAndView;
    }

    // 등록 완료 후 상세페이지 조회하기 링크
    


    
}
