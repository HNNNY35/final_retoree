package com.project.final_retoree.services;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CommonDao;



@Service
public class DealerService {
    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    @Autowired
    CommonDao commonDao;
    
    public Object getOne(Object dataMap){
        String sqlMapId = "Dealer.selectFromUserInfoByDEALER_ID";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }
    public Object update(Object dataMap){
        String sqlMapId = "Dealer.updateUserInfo";
        String password = (String) ((Map) dataMap).get("PASSWORD");
        ((Map) dataMap).put("PASSWORD", bcryptPasswordEncoder.encode(password));
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    } 

    public Object getList(Object dataMap){
        String sqlMapId = "Dealer.selectCarInfoByDealerId";
        
        Object result = commonDao.getList(sqlMapId, dataMap);



        return result;
    }

    // 1:1 문의 리스트 조회
    public Object selectContactList(Object dataMap){
        String sqlMapId = "Dealer.selectContactList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }
    
}
