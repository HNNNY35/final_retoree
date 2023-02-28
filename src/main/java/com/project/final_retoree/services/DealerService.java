package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CommonDao;

@Service
public class DealerService {
    @Autowired
    CommonDao commonDao;
    
    public Object getOne(Object dataMap){
        String sqlMapId = "Dealer.selectFromUserInfoByDEALER_ID";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }
    public Object update(Object dataMap){
        String sqlMapId = "Dealer.updateUserInfo";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    } 
}
