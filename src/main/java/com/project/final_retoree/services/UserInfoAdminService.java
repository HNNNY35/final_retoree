package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.UserInfoAdminDao;
import com.project.final_retoree.utils.CommonUtils;
import com.project.final_retoree.utils.Paginations;

@Service
public class UserInfoAdminService {

    @Autowired
    UserInfoAdminDao userinfoadminDao;

    @Autowired
    CommonUtils commonUtils;

    // pagination
    public Object getList(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.selectListByUID";
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
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        // 파라미터추가
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

    // 딜러 insert
    public Object insertDealer(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.insertDealer";
        Object result = userinfoadminDao.insert(sqlMapId, dataMap);
        return result;
    }

    // 딜러 파일 insert
    public Object DealerFile(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.insertAttachfile";
        Object result = userinfoadminDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap) {
        String sqlMapId = "UserInfoAdmin.updateByUSERID";
        Object result = userinfoadminDao.update(sqlMapId, dataMap);
        return result;
    }

    // 딜러 File update
    public Object updateAndGetList(Object dataMap) {
        ((Map) dataMap).put("ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
        this.DealerFile(dataMap);
        Object result = this.insertDealer(dataMap);
        result = this.update(dataMap);
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

    // user search
    // public Object getkeyword(Object dataMap) {
    // String sqlMapId = "UserInfoAdmin.searchUser";
    // Object result = userinfoadminDao.getList(sqlMapId, dataMap);
    // return result;
    // }

    // user search Count
    // public Object getSerachTotal(Object dataMap) {
    // String sqlMapId = "UserInfoAdmin.UserSearchCount";
    // Object result = userinfoadminDao.getOne(sqlMapId, dataMap);
    // return result;
    // }

    // user search
    // public Object getSearchUserAndGetList(Object dataMap) {
    // Map<String, Object> result = new HashMap<String, Object>();
    // int totalCount = (int) this.getSerachTotal(dataMap);
    // int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    // Paginations paginations = new Paginations(totalCount, currentPage);
    // result.put("paginations", paginations);
    // ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    // ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
    // result.put("resultList", this.getkeyword(dataMap));
    // return result;
    // }

}
