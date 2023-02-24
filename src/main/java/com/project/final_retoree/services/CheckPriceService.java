package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.CheckPriceDao;

@Service
public class CheckPriceService {
    @Autowired
    CheckPriceDao checkPriceDao;
    
    // public Object getList(Object dataMap){
    //     String sqlMapId = "CheckPrice.selectFromCAR_INFO";
    //     Object result = checkPriceDao.getList(sqlMapId, dataMap);
    //     return result;
    // }
    public Object getListWithFilter(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithFilter";
        Object result = checkPriceDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getMinMax(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithMinMax";
        Object result = checkPriceDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getManufAndModel(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithFilterGetManufAndModel";
        Object result = checkPriceDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getFirst(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithHyundaiForFirst";
        Object result = checkPriceDao.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getFirstMinMax(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithHyundaiForFirstMinMax";
        Object result = checkPriceDao.getOne(sqlMapId, dataMap);
        return result;
    }
    public Object getFirstManufAndModel(Object dataMap){
        String sqlMapId = "CheckPrice.selectFromCAR_INFOWithHyundaiForFirstModelManufacturer";
        Object result = checkPriceDao.getOne(sqlMapId, dataMap);
        return result;
    }
    
}
