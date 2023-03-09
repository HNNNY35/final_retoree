package com.project.final_retoree.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.bean.CarInfo;
import com.project.final_retoree.services.MainService;
import com.project.final_retoree.services.SearchService;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    @Autowired
    SearchService searchService;

    @Autowired
    CarInfo carInfo;

    // 메인 차량 검색
    @RequestMapping(value = { "/searchCar" })
    public ModelAndView searchCar(@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws Exception {

        Object resultMap = mainService.getSearchCarList(params);
        modelAndView.addObject("resultMap", resultMap);

        System.out.println(params);
        modelAndView.setViewName("users_ etc/search");
        // service 호출
        return modelAndView;
       
    }

    //특가, 신차급, 국산 & 수입차 
    @GetMapping(value = { "", "/", "/main_search" })
    public ModelAndView mainSearch(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

       
        Object searchRs = mainService.getSearchList(params);
        Object specialRs = mainService.getSpecialList(params);
        Object newCarRs = mainService.getNewCarList(params);
        Object domesticRs = mainService.getDomesticList(params);
        Object importedRs = mainService.getImportedList(params);

        try {
            params.put("SOURCE_UNIQUE_SEQ",((Map<String, Object>)specialRs).get("CAR_ID"));
            params.put("SOURCE_UNIQUE_SEQ",((Map<String, Object>)newCarRs).get("CAR_ID"));
            params.put("SOURCE_UNIQUE_SEQ",((Map<String, Object>)domesticRs).get("CAR_ID"));
            params.put("SOURCE_UNIQUE_SEQ",((Map<String, Object>)importedRs).get("CAR_ID"));
            Object carImgs = mainService.selectCarImg(params);
            modelAndView.addObject("carImgs", carImgs);
        } catch (Exception e) {
            System.out.println("empty");
        }

        modelAndView.addObject("searchRs", searchRs);
        modelAndView.addObject("specialRs", specialRs);
        modelAndView.addObject("newCarRs", newCarRs);
        modelAndView.addObject("domesticRs", domesticRs);
        modelAndView.addObject("importedRs", importedRs);
        
        modelAndView.setViewName("main_search");
        return modelAndView;
    }

   
}