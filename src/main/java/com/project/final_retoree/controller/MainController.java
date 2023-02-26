package com.project.final_retoree.controller;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.javassist.compiler.ast.Keyword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @GetMapping(value = { "", "/", "/main_search" })
    public ModelAndView mainSearch(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // ArrayList<CarInfo> searchBeanList = new ArrayList<>();
        // searchBeanList.setType(type);
        // searchBeanList

        // modelAndView.addObject("searchBeanLIst", searchBeanList);

        // Object filterRs = mainService.getFilterList(params);
        Object searchRs = mainService.getSearchList(params);
        Object specialRs = mainService.getSpecialList(params);
        Object newCarRs = mainService.getNewCarList(params);
        Object domesticRs = mainService.getDomesticList(params);
        Object importedRs = mainService.getImportedList(params);

        // modelAndView.addObject("filterRs", filterRs);
        modelAndView.addObject("searchRs", searchRs);
        modelAndView.addObject("specialRs", specialRs);
        modelAndView.addObject("specialRs", specialRs);
        modelAndView.addObject("newCarRs", newCarRs);
        modelAndView.addObject("domesticRs", domesticRs);
        modelAndView.addObject("importedRs", importedRs);

        modelAndView.setViewName("main_search");
        return modelAndView;
    }

}