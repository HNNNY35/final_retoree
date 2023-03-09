package com.project.final_retoree.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.CheckPriceService;

@Controller
public class CheckPriceController {
    @Autowired
    CheckPriceService checkPriceService;

    @RequestMapping(value = {"/price_check"}, method = RequestMethod.GET)
    public ModelAndView price_checkGet(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        Object resultMap = checkPriceService.getFirst(params);
        Object dataMinMax = checkPriceService.getFirstMinMax(params);
        Object manufAndModel = checkPriceService.getFirstManufAndModel(params);
        //이미지 삽입
        try {
            int i = 0;
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)resultMap){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = checkPriceService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)resultMap).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("empty");
        }

        modelAndView.addObject("manufAndModel", manufAndModel); //one
        modelAndView.addObject("minMax", dataMinMax); //one
        modelAndView.addObject("resultMap", resultMap);

        modelAndView.setViewName("users_ etc/price_check");

        return modelAndView;
    } 

    @RequestMapping(value = {"/price_check"}, method = RequestMethod.POST)
    public ModelAndView price_checkPost(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = checkPriceService.getListWithFilter(params);
        Object dataMinMax = checkPriceService.getMinMax(params);
        Object manufAndModel = checkPriceService.getManufAndModel(params);

        //이미지 삽입
        try {
            int i = 0;
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)resultMap){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = checkPriceService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)resultMap).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("empty");
        }

        modelAndView.addObject("manufAndModel", manufAndModel); //one
        modelAndView.addObject("minMax", dataMinMax); //one
        modelAndView.addObject("resultMap", resultMap);
        
        modelAndView.setViewName("users_ etc/price_check");
        return modelAndView;
    }
}
