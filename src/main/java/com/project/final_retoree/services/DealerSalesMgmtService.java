package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.DealerSalesMgmtDao;

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

    // dealer_id로 딜러의 판매중인 차량 리스트
    public Object getOnSaleCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromOnSaleCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }

    // dealer_id로 딜러의 판매완료 차량 리스트
    public Object getSoldOutCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromSoldoutCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
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

}
