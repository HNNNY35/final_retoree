package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.UserInfoAdminDao;

@Service
public class UserInfoAdminService {

    @Autowired
    UserInfoAdminDao userinfoadminDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.selectFromUserinfo";
        Object result = userinfoadminDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.selectByID";
        Object result = userinfoadminDao.getOne(sqlMapId, dataMap);
        return result;

    }

    public Object update(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.updateByUSERID";
        Object result = userinfoadminDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object updateAndGetList(Object dataMap) {
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;

    }

    public Object delete(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.deleteByUSERID";
        Object result = userinfoadminDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAndGetList(Object dataMap) {
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;

    }
    // public Object insert(Object dataMap) {
    // String sqlMapId = "UserInfoAdmin.inserWithUID";
    // Object result = userinfoadminDao.insert(sqlMapId, dataMap);
    // return result;
    // }

    // public Object insertAndGetList(Object dataMap) {
    // Object result = this.insert(dataMap);
    // result = this.getList(dataMap);
    // return result;
    // }
}
