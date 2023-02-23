package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.RegisterDao;

@Service
public class RegisterService {

    @Autowired
    RegisterDao registerDao;

    // public Object getList(Object dataMap) {
    // String sqlmapId = "Register.selectFromRegister";
    // Object result = registerDao.getList(sqlmapId, dataMap);
    // return result;

    // }

    public Object insertregister(Object dataMap) {
        String sqlMapId = "Register.insertWithUID";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    // public Object insertagree(Object dataMap) {
    // String sqlMapId = "Register.insertagreeWithUID";
    // Object result = registerDao.insert(sqlMapId, dataMap);
    // return result;
    // }

    // public Object register(Object dataMap) {
    // Object result = this.insertregister(dataMap);
    // result = this.insertagree(dataMap);
    // return result;
    // }

    // public Object select(Object dataMap) {
    // String sqlMapId = "Register.selectFromRegister";
    // Object result = registerDao.getOne(sqlMapId, dataMap);
    // return result;
    // }

}
