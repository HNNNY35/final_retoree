package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.DealerSalesMgmtDao;

@Service
public class CarModifyService {
    @Autowired
    DealerSalesMgmtDao dealerSalesMgmtDao;

    // 딜러ID, CAR_DTL_ID 받아서 차량 정보 조회
    public Object getCarInfo(Object dataMap){
        String sqlMapId = "CarModify.selectFromCAR_DETAILE_INFO";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }
    
    // 차량 일반정보 수정
    public Object updateCarGeneral(Object dataMap){
        String sqlMapId = "CarModify.updateCarGeneral";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);

        return result;
    }

    // 차량 패널 정보 수정
    public Object updateCarPanel(Object dataMap){
        String sqlMapId = "CarModify.updateCarPANEL";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);

        return result;
    }

    // 차량 주요 골격 정보 수정
    public Object updateCarSkeleton(Object dataMap){
        String sqlMapId = "CarModify.updateCarSkeleton";
        Object result = dealerSalesMgmtDao.update(sqlMapId, dataMap);

        return result;
    }
    
}
