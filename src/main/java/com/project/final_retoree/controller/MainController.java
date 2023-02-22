package com.project.final_retoree.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.bean.CarInfo;
import com.project.final_retoree.services.MainService;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    @Autowired
    CarInfo carInfo;

    // @RequestMapping(value = { "", "/", "/main_search" })
    // public ModelAndView signup(ModelAndView modelAndView) {
    // modelAndView.setViewName("main_search");
    // return modelAndView;

    // }

    // 메인 차량 검색
    @GetMapping(value = { "", "/", "/main_search" })
    public ModelAndView mainSearch(ModelAndView modelAndView) {

        // ArrayList<CarInfo> searchBeanList = mainService.getSearchBeanList();
        // modelAndView.addObject("searchBeanLIst", searchBeanList);
        // Object searchRs = mainService.getSearchList(params);
        // Object specialRs = mainService.getSpecialList(params);
        // Object newCarRs = mainService.getNewCarList(params);
        // Object domesticRs = mainService.getDomesticList(params);
        // Object importedRs = mainService.getImportedList(params);

        // modelAndView.addObject("searchRs", searchRs);
        // modelAndView.addObject("specialRs", specialRs);
        // modelAndView.addObject("newCarRs", newCarRs);
        // modelAndView.addObject("domesticRs", domesticRs);
        // modelAndView.addObject("importedRs", importedRs);

        modelAndView.setViewName("users_etc/search");
        return modelAndView;
    }

}