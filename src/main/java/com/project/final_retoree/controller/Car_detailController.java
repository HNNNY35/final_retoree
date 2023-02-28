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
        
        Object dealer_id = ((Map<String, Object>)resultMap2).get("DEALER_ID");
        Object resultMap3 = carDetailService.getDealerSalesCar(dealer_id);
        Object resultMap4 = carDetailService.getDealerSoldOutCar(dealer_id);
        
        modelAndView.addObject("resultMap1", resultMap1);
        modelAndView.addObject("resultMap2", resultMap2);
        modelAndView.addObject("resultMap3", resultMap3);
        modelAndView.addObject("resultMap4", resultMap4);
        modelAndView.setViewName("car/car_detail_change");
        return modelAndView;
    }
    
    // 방문예약 submit시 방문예약 insert후 방문예약 완료 페이지로
    @RequestMapping(value = "/car_detail_reservation/{car_dtl_id}", method = RequestMethod.POST)
    public ModelAndView car_detail_reservation(@RequestParam Map<String, Object> params, @PathVariable String car_dtl_id, ModelAndView modelAndView) {
        
        Object resultMap = carDetailService.insertReservation(params);
        
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("car/car_detail_change");
        return modelAndView;
    }


}
