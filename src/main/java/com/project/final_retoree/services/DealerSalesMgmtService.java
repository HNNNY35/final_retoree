package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.DealerSalesMgmtDao;
import com.project.final_retoree.utils.Paginations_dealer;

@Service
public class DealerSalesMgmtService {
    @Autowired
    DealerSalesMgmtDao dealerSalesMgmtDao;

    // dealer_id로 딜러 이름 가져오기
    public Object getDealerName(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromUserInfoByDEALER_ID";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }

    
    // dealer_id로 딜러의 판매중인 차량 리스트 + pagination
    public Object getOnSaleCarListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();

        int totalCount = (int) this.getOnSaleTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");

        Paginations_dealer paginations = new Paginations_dealer(totalCount, currentPage);

        result.put("paginations", paginations);

        ((Map<String, Object>)dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getOnSaleCarList(dataMap));
        
        return result;
    }
    
    // dealer_id로 딜러의 판매중인 차량 리스트
    public Object getOnSaleCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromOnSaleCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }
    
    // dealer_id로 딜러의 판매중인 차량 수
    public Object getOnSaleTotal(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectOnSaleTotal";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // dealer_id로 딜러의 판매완료 차량 리스트 + pagination
    public Object getSoldOutCarListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();

        int totalCount = (int) this.getSoldOutTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");

        Paginations_dealer paginations = new Paginations_dealer(totalCount, currentPage);

        result.put("paginations", paginations);

        ((Map<String, Object>)dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getSoldOutCarList(dataMap));
        
        return result;
    }

    // dealer_id로 딜러의 판매완료 차량 리스트
    public Object getSoldOutCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromSoldoutCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }

    // dealer_id로 딜러의 판매중인 차량 수
    public Object getSoldOutTotal(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromSoldoutCARTotal";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }
    
    // car_dtl_id로 선택된 차량 정보 가져오기
    public Object getCarInfo(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectCarInfo";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }
    
    // 차량 판매 상태 수정하기
    public Object updateSaleStatus(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.updateSaleStatus";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);
        return result;
    }
    
    // 방문 예약 리스트 조회
    public Object selectReservation(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectReservation";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }

    // RESERVATION_ID로 방문예약 조회
    public Object selectReservationInfo(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectReservationInfo";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // RESERVATION_ID로 방문예약 정보 수정
    public Object updateReservation(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.updateReservation";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);
        return result;
    }


    // 1:1 문의 리스트 조회 + pagination
    public Object selectContactListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();

        int totalCount = (int) this.getContactTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");

        Paginations_dealer paginations = new Paginations_dealer(totalCount, currentPage);

        result.put("paginations", paginations);
        ((Map<String, Object>)dataMap).put("pageBegin", paginations.getPageBegin());

        result.put("contactList", this.selectContactList(dataMap));
        return result;
    }    

    // 1:1 문의 리스트 조회
    public Object selectContactList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectContactList";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }

    // dealer_id로 딜러의 1:1상담 수
    public Object getContactTotal(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectContactCount";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 1:1 문의 상세 조회
    public Object selectContact(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectContact";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }    

    // 1:1 문의 답변하기
    public Object updateContact(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.updateContact";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);
        return result;
    }    

}
