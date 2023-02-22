package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.RegisterDao;

@Service
public class RegisterService {

    @Autowired
    RegisterDao registerDao;

    public Object getList(Object dataMap) {
        String sqlmapId = "Register.selectFromRegister_2";
        Object result = registerDao.getList(sqlmapId, dataMap);
        return result;

    }

    public Object insert(Object dataMap) {
        String sqlMapId = "Register.insertWithUID";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertAndGetList(Object dataMap) {
        Object result = this.insert(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    // private Object getList(Object dataMap) {
    // return null;
    // } // controller

}
