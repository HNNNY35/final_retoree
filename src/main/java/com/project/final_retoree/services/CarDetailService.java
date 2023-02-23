package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CarDetailDao;

@Service
public class CarDetailService {
    @Autowired
    CarDetailDao carDetailDao;

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

    public Object getDealerInfo(Object dataMap){
        String sqlMapId = "CarDetail.selectFromDEALER_INFOByCAR_DTL_ID";
        Object result = carDetailDao.getOne(sqlMapId, dataMap);
        return result;
    }
}
