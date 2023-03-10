package com.project.final_retoree.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

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
    @GetMapping(value = {"","/","/main_search"})
    public ModelAndView mainSearch(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
       
        //차량 검색(이미지 필요 x)
        Object searchRs = mainService.getSearchList(params);
        //특가
        Object specialRs = mainService.getSpecialList(params);
        //신차급
        Object newCarRs = mainService.getNewCarList(params);
        //국산차
        Object domesticRs = mainService.getDomesticList(params);
        //수입차
        Object importedRs = mainService.getImportedList(params);

        System.out.println();

        // 지금은 데이터 양이 많지 않아 for문으로 돌려도 되지만 데이터가 많을땐 db에서 경로를 join하여 가져와야한다
        try {
            int i = 0;
            // forEach문 사용하여 specialRs를 list에 담
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)specialRs){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = searchService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)specialRs).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("special empty");
        }
    
        try {
            int i = 0;
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)newCarRs){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = searchService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)newCarRs).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("New car empty");
        }

        try {
            int i = 0;
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)domesticRs){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = searchService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)domesticRs).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("Domestic empty");

        }
        try {
            int i = 0;
            for( Map<String, Object> list :(ArrayList<Map<String, Object>>)importedRs){
                Map<String, Object> car_id = new HashMap<>();
                car_id.put("SOURCE_UNIQUE_SEQ", list.get("CAR_ID"));
                Object carImgs = searchService.selectCarImg(car_id);
                (((ArrayList<Map<String, Object>>)importedRs).get(i)).put("carImgs", (Map<String, Object>)carImgs);
                i++;
            }
        } catch (Exception e) {
            System.out.println("Imported empty");

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