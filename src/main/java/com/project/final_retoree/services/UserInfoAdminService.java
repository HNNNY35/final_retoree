package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.UserInfoAdminDao;
import com.project.final_retoree.utils.Paginations;

@Service
public class UserInfoAdminService {

    @Autowired
    UserInfoAdminDao userinfoadminDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.selectFromUserinfo";
        Object result = userinfoadminDao.getList(sqlMapId, dataMap);
        return result;
    }

    // pagination
    public Object getListWithPagination(Object dataMap) { // 묶음 두개로
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin()); // 파라미터추가
        result.put("resultList", this.getList(dataMap));
        return result;
    }

    public Object getTotal(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.selectTotal";
        Object result = userinfoadminDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 전체 유저의 갯수
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
        String sqlMapId2 = "UserInfoAdmin.deleteByUSER";
        userinfoadminDao.delete(sqlMapId2, dataMap);
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
