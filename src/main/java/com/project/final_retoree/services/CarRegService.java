package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CarRegDao;

@Service
public class CarRegService {
    @Autowired
    CarRegDao carRegDao;
    
    public Object insertOne(Object dataMap){
        String sqlMapId = "CarReg.insertCarInfoWithUID";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        return result;
    }

}
