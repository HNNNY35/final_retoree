package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.configurations.PrincipalUser;
import com.project.final_retoree.services.CarModifyService;

@Controller
public class CarModifyController {
    @Autowired
    CarModifyService carModifyService;

    // 차량 정보 조회해서 수정페이지에 값 불러오기, input hidden값으로 CAR_ID, CAR_DTL_ID, PANER_ID, SKELETON_ID
    @RequestMapping(value = "/car_modify", method = RequestMethod.POST)
    public ModelAndView car_modify(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // 로그인 한 딜러 uid
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        Object resultMap = carModifyService.getCarInfo(params);
        
        modelAndView.addObject("resultMap", resultMap);

        String viewName = "/dealer/car_modify";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // 차량 일반 정보 수정 submit 후 다시 수정페이지
    @RequestMapping(value = "/car_modify_general", method = RequestMethod.POST)
    public ModelAndView car_modify_general(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // 로그인 한 딜러 uid
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        Object updateCarGeneral = carModifyService.updateCarGeneral(params);
        Object selectCarInfo = carModifyService.getCarInfo(params);
        
        modelAndView.addObject("resultMap", selectCarInfo);

        String viewName = "/dealer/car_modify";
        modelAndView.setViewName(viewName);
        
        return modelAndView;
    }

    // 차량 패널 정보 수정 submit 후 다시 수정페이지
    @RequestMapping(value = "/car_modify_panel", method = RequestMethod.POST)
    public ModelAndView car_modify_panel(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // 로그인 한 딜러 uid
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        Object updateCarPanel = carModifyService.updateCarPanel(params);
        Object selectCarInfo = carModifyService.getCarInfo(params);
        
        modelAndView.addObject("resultMap", selectCarInfo);

        String viewName = "/dealer/car_modify";
        modelAndView.setViewName(viewName);

        return modelAndView;
    }

    // 차량 골격 정보 수정 submit 후 다시 수정페이지
    @RequestMapping(value = "/car_modify_skeleton", method = RequestMethod.POST)
    public ModelAndView car_modify_skeleton(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // 로그인 한 딜러 uid
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        Object updateCarSkeleton = carModifyService.updateCarSkeleton(params);
        Object selectCarInfo = carModifyService.getCarInfo(params);
        
        modelAndView.addObject("resultMap", selectCarInfo);

        String viewName = "/dealer/car_modify";
        modelAndView.setViewName(viewName);

        return modelAndView;
    }
}
