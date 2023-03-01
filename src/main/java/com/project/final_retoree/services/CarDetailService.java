package com.project.final_retoree.services;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CarDetailDao;
import com.project.final_retoree.utils.CommonUtils;

@Service
public class CarDetailService {
    @Autowired
    CarDetailDao carDetailDao;

    @Autowired
    CommonUtils commonUtils;

    public Object getList(Object dataMap){
        String sqlMapId = "CarDetail.selectFromCAR_DETAILE_INFO";
        Object result = carDetailDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getCarInfo(Object dataMap){
        String sqlMapId = "CarDetail.selectFromCAR_DETAILE_INFOByCAR_DTL_ID";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 선택된 차량 car_dtl_id 받아서 딜러 정보 조회하고 dealer_id 리턴
    public Object getDealerInfo(Object dataMap){
        String sqlMapId = "CarDetail.selectFromDEALER_INFOByCAR_DTL_ID";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);

        // 전화번호 - 붙이기

        return result;
    }
    
    // dealer_id 받아서 딜러 판매중 차량 조회
    public Object getDealerSalesCar(Object dataMap){
        String sqlMapId = "CarDetail.selectDealerSalesCar";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);
        result = ((Map<String, Object>)result).get("COUNT(*)");
        return result;
    }

    // dealer_id 받아서 딜러 판매완료 차량 조회
    public Object getDealerSoldOutCar(Object dataMap){
        String sqlMapId = "CarDetail.selectDealerSoldOutCar";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);
        result = ((Map<String, Object>)result).get("COUNT(*)");
        return result;
    }

    // 방문예약 insert
    public Object insertReservation(Object dataMap) {
        // reservation_id 생성
        ((Map<String, Object>) dataMap).put("RESERVATION_ID", commonUtils.getUniqueSequence());
        
        // 로그인 유저정보 가져와야함(hidden으로 임시로 입력함)

        String sqlMapId = "CarDetail.insertReservation";
        Object result = carDetailDao.insert(sqlMapId, dataMap);

        result = ((Map<String, Object>) dataMap).get("CAR_DTL_ID");
        
        return result;
    }
    // 1:1상담 insert
    public Object insertContact(Object dataMap) {
        // contact_id 생성
        ((Map<String, Object>) dataMap).put("CONTACT_ID", commonUtils.getUniqueSequence());
        
        // 로그인 유저정보 가져와야함(hidden으로 임시로 입력함)

        String sqlMapId = "CarDetail.insertContact";
        Object result = carDetailDao.insert(sqlMapId, dataMap);

        result = ((Map<String, Object>) dataMap).get("CAR_DTL_ID");
        
        return result;
    }

    
}
