package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.DealerSalesMgmtService;

@Controller
public class DealerSalesMgmtController {
    @Autowired
    DealerSalesMgmtService dealerSalesMgmtService;

    // 딜러 차량관리 페이지
    // url : http://localhost:8080/dealer_sales_mgmt/u002
    @RequestMapping(value = "/dealer_sales_mgmt/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView dealer_sales_mgmt(@RequestParam Map<String,Object> params, @PathVariable String dealer_id, ModelAndView modelAndView){
        params.put("DEALER_ID", dealer_id);
        
        // 딜러 이름 가져오기
        Object resultDealerName = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("resultDealerName", resultDealerName);
        
        // 판매중 리스트 가져오기
        Object resultOnSaleCar = dealerSalesMgmtService.getOnSaleCarList(params);
        modelAndView.addObject("resultOnSaleCar", resultOnSaleCar);
        
        modelAndView.setViewName("dealer/dealer_sales_mgmt");
        return modelAndView;
    }
    
    // 딜러 매출내역 페이지
    // url : http://localhost:8080/dealer_sales/u002
    @RequestMapping(value = "/dealer_sales/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView dealer_sales(@RequestParam Map<String,Object> params, @PathVariable String dealer_id, ModelAndView modelAndView){
        params.put("DEALER_ID", dealer_id);
        
        // 딜러 이름 가져오기
        Object resultDealerName = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("resultDealerName", resultDealerName);

        // 판매완료 리스트 가져오기
        Object resultSoltOutCar = dealerSalesMgmtService.getSoldOutCarList(params);
        modelAndView.addObject("resultSoltOutCar", resultSoltOutCar);
        
        modelAndView.setViewName("dealer/dealer_sales");
        return modelAndView;
        
    }
    

}
