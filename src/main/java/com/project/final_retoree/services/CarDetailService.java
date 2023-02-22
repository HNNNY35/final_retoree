package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CarDetailDao;

@Service
public class CarDetailService {
    @Autowired
    CarDetailDao carDetailDao;

    public Object getList(Object dataMap){
        String sqlMapId = "CarDetail.selectFromCAR_INFOByCAR_DTL_ID";
        Object result = carDetailDao.getList(sqlMapId, dataMap);
        return result;

    }
}
