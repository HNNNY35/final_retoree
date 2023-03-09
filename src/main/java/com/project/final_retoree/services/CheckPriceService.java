package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.Map;

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

    public Object selectCarImg(Object dataMap) {
        String sqlMapId = "Search.selectCarImg";
        
        Object result = null;
        Map results = new HashMap<String, String>();
        
        String[] imgFiles = {"Front", "Side", "Inside", "Tire", "Navi", "Trunk"};
        
        for(int i = 0; i < imgFiles.length; i++) {
            ((Map<String, Object>) dataMap).put("IMG_INFO", imgFiles[i]);
            result = checkPriceDao.getOne(sqlMapId, dataMap);
            String fileName = (String)(((Map<String, Object>)result).get("ORIGINALFILE_NAME"));
            
            results.put(imgFiles[i], fileName);
        }
        
        // 이미지 가져올 때 필요한 것 : 경로, 이미지파일 이름
        results.put("PHYSICALFILE_NAME", ((Map<String, Object>)checkPriceDao.getOne(sqlMapId, dataMap)).get("PHYSICALFILE_NAME"));
        
        return results;
    }
    
}
