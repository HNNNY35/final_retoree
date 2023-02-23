package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.CarDetailService;

@Controller
public class Car_detailController {
    @Autowired
    CarDetailService carDetailService;

    // test
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public ModelAndView test(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = carDetailService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("car/test");
        return modelAndView;
    }

    // // jsp에서 uid 받아와야 함 => test에서 받아옴
    @RequestMapping(value = "/car_detail_change/{car_dtl_id}", method = RequestMethod.GET)
    // @RequestMapping(value = "/car_detail_change")
    public ModelAndView car_detail(@RequestParam Map<String, Object> params, @PathVariable String car_dtl_id, ModelAndView modelAndView) {
        params.put("CAR_DTL_ID", car_dtl_id);
        Object resultMap1 = carDetailService.getCarInfo(params);
        Object resultMap2 = carDetailService.getDealerInfo(params);
        modelAndView.addObject("resultMap1", resultMap1);
        modelAndView.addObject("resultMap2", resultMap2);
        modelAndView.setViewName("car/car_detail_change");
        return modelAndView;
    }

    @RequestMapping(value = "/car_reg")
    public ModelAndView car_reg(ModelAndView modelAndView) {
        modelAndView.setViewName("car/car_reg");
        return modelAndView;

    }

}
