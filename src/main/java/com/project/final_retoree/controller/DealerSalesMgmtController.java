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
import com.project.final_retoree.services.DealerSalesMgmtService;

@Controller
public class DealerSalesMgmtController {
    @Autowired
    DealerSalesMgmtService dealerSalesMgmtService;

    // 딜러 차량관리 페이지
    // url : http://localhost:8080/dealer_sales_mgmt/U002
    // @RequestMapping(value = "/dealer_sales_mgmt/{dealer_id}", method = RequestMethod.GET)
    @RequestMapping(value = "/dealer_sales_mgmt", method = RequestMethod.GET)
    public ModelAndView dealer_sales_mgmt(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
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

    // pagination
    @RequestMapping(value = "/dealer_sales_mgmt/{currentPage}", method = RequestMethod.GET)
    public ModelAndView dealer_sales_mgmt(@RequestParam Map<String,Object> params, @PathVariable String currentPage, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
        params.put("DEALER_ID", dealer_id);

        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        
        // 딜러 이름 가져오기
        Object resultDealerName = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("resultDealerName", resultDealerName);
        
        // 판매중 리스트 가져오기
        Object resultOnSaleCar = dealerSalesMgmtService.getOnSaleCarListWithPagination(params);
        modelAndView.addObject("resultOnSaleCar", resultOnSaleCar);
        
        modelAndView.setViewName("dealer/dealer_sales_mgmt");
        return modelAndView;
    }
    
    // 딜러 매출내역 페이지 + pagination
    // url : http://localhost:8080/dealer_sales/U002
    // @RequestMapping(value = "/dealer_sales/{dealer_id}", method = RequestMethod.GET)
    @RequestMapping(value = "/dealer_sales/{currentPage}", method = RequestMethod.GET)
    public ModelAndView dealer_sales(@RequestParam Map<String,Object> params, @PathVariable String currentPage, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);

        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        
        // 딜러 이름 가져오기
        Object resultDealerName = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("resultDealerName", resultDealerName);

        // 판매완료 리스트 가져오기
        Object resultSoltOutCar = dealerSalesMgmtService.getSoldOutCarListWithPagination(params);
        modelAndView.addObject("resultSoltOutCar", resultSoltOutCar);
        
        modelAndView.setViewName("dealer/dealer_sales");
        return modelAndView;
    }

    // 딜러 차량 판매상태 관리 페이지
    @RequestMapping(value = "/car_sales_status", method = RequestMethod.POST)
    public ModelAndView car_sales_status(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
        params.put("DEALER_ID", dealer_id);

        // 판매 정보
        Object carSalesInfo = dealerSalesMgmtService.getCarInfo(params);
        modelAndView.addObject("carSalesInfo", carSalesInfo);

        // 방문예약 리스트
        Object reservationList = dealerSalesMgmtService.selectReservation(params);
        modelAndView.addObject("reservationList", reservationList);
        
        modelAndView.setViewName("dealer/car_sales_status");
        return modelAndView;
    }
    
    // 판매 상태 수정
    @RequestMapping(value = "/car_sale_status_modify", method = RequestMethod.POST)
    public ModelAndView car_sale_status_modify(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
        params.put("DEALER_ID", dealer_id);

        Object updateSaleStatus = dealerSalesMgmtService.updateSaleStatus(params);
        Object carSalesInfo = dealerSalesMgmtService.getCarInfo(params);
        modelAndView.addObject("carSalesInfo", carSalesInfo);
        
        modelAndView.setViewName("dealer/car_sales_status");
        return modelAndView;
    }

    // 방문예약 정보 변경 페이지
    @RequestMapping(value = "/reservationComfirm", method = RequestMethod.POST)
    public ModelAndView reservationComfirm(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
        params.put("DEALER_ID", dealer_id);

        // 판매 정보
        Object carSalesInfo = dealerSalesMgmtService.getCarInfo(params);
        modelAndView.addObject("carSalesInfo", carSalesInfo);
        
        // 방문예약 정보
        Object reservationInfo = dealerSalesMgmtService.selectReservationInfo(params);
        modelAndView.addObject("reservationInfo", reservationInfo);

        
        modelAndView.setViewName("dealer/reservationConfirm");
        return modelAndView;
    }

    // 방문예약 정보 변경 submit시 업데이트 후 방문예약 정보 변경페이지
    @RequestMapping(value = "/reservationComfirmModify", method = RequestMethod.POST)
    public ModelAndView reservationComfirmModify(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();
        params.put("DEALER_ID", dealer_id);

        // 정보 변경
        Object reservationModify = dealerSalesMgmtService.updateReservation(params);

        // 판매 정보
        Object carSalesInfo = dealerSalesMgmtService.getCarInfo(params);
        modelAndView.addObject("carSalesInfo", carSalesInfo);
        
        // 방문예약 정보
        Object reservationInfo = dealerSalesMgmtService.selectReservationInfo(params);
        modelAndView.addObject("reservationInfo", reservationInfo);

        
        modelAndView.setViewName("dealer/reservationConfirm");
        return modelAndView;
    }

    // 고객관리 페이지
    @RequestMapping(value = "/dealer_customer_mgmt/{currentPage}", method = RequestMethod.GET)
    public ModelAndView dealerCustomerMgmt(@RequestParam Map<String,Object> params, @PathVariable String currentPage, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);

        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);

        // 딜러 이름 가져오기
        Object resultDealerName = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("resultDealerName", resultDealerName);
        
        // 1:1상담 리스트 가져오기
        Object resultContactList = dealerSalesMgmtService.selectContactListWithPagination(params);
        modelAndView.addObject("resultContactList", resultContactList);

        modelAndView.setViewName("dealer/dealer_customer_mgmt");
        return modelAndView;
    }

    // 1:1 상담 상세보기 및 답변 등록 페이지
    @RequestMapping(value = "/dealer_contact", method = RequestMethod.POST)
    public ModelAndView dealerContact(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        // 1:1 상담 상세보기
        Object resultContact = dealerSalesMgmtService.selectContact(params);
        modelAndView.addObject("resultContact", resultContact);

        modelAndView.setViewName("dealer/dealer_contact");
        return modelAndView;
    }
    
    // 1:1상담
    @RequestMapping(value = "/dealer_contact_submit", method = RequestMethod.POST)
    public ModelAndView dealerContactSubmit(@RequestParam Map<String,Object> params, ModelAndView modelAndView){
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String dealer_id = principal.getUser_id();

        params.put("DEALER_ID", dealer_id);
        
        // 1:1상담 답변 update
        Object updateContact = dealerSalesMgmtService.updateContact(params);
        modelAndView.addObject("updateContact", updateContact);

        // 1:1상담 내용 출력
        Object resultContact = dealerSalesMgmtService.selectContact(params);
        modelAndView.addObject("resultContact", resultContact);

        modelAndView.setViewName("dealer/dealer_contact_submit");
        return modelAndView;
    }

}
