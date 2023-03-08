package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.List;
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

    // 선택된 차량 car_dtl_id 받아서 딜러 정보 조회
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
    
    
    // 차량 이미지 가져오기
    public Object selectCarImg(Object dataMap) {
        String sqlMapId = "CarDetail.selectCarImg";
        
        Object result = null;
        Map results = new HashMap<String, String>();
        
        String[] imgFiles = {"Front", "Side", "Inside", "Tire", "Navi", "Trunk"};
        
        for(int i = 0; i < imgFiles.length; i++) {
            ((Map<String, Object>) dataMap).put("IMG_INFO", imgFiles[i]);
            result = carDetailDao.getOne(sqlMapId, dataMap);
            String fileName = (String)(((Map<String, Object>)result).get("ORIGINALFILE_NAME"));
            
            results.put(imgFiles[i], fileName);
        }
        
        // 이미지 가져올 때 필요한 것 : 경로, 이미지파일 이름
        results.put("PHYSICALFILE_NAME", ((Map<String, Object>)carDetailDao.getOne(sqlMapId, dataMap)).get("PHYSICALFILE_NAME"));
        
        return results;
    }

    // 찜 여부 확인하기
    public Object checkWishlist(Object dataMap) {
        String sqlMapId = "CarDetail.selectWishlist";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);
        
        return result;
    }
    
    // 찜하기
    public Object insertWishlist(Object dataMap) {
        // wishlist_id 생성
        ((Map<String, Object>) dataMap).put("WISHLIST_ID", commonUtils.getUniqueSequence());
        
        String sqlMapId = "CarDetail.insertWishList";
        Object result = carDetailDao.insert(sqlMapId, dataMap);

        return result;
    }

    // 찜제거하기
    public Object deleteWishlist(Object dataMap) {
        String sqlMapId = "CarDetail.deleteWishList";
        Object result = carDetailDao.delete(sqlMapId, dataMap);

        return result;
    }
}
