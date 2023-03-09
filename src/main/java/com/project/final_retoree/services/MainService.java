package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.bean.CarInfo;
import com.project.final_retoree.daos.MainDao;

@Service
public class MainService {
    @Autowired
    MainDao mainDao;

    // 메인 검색
    public List<CarInfo> getSearchBeanList(CarInfo carInfo) throws Exception {
        // ArrayList<CarInfo> list = new ArrayList<CarInfo>();
        // CarInfo carInfo = new CarInfo();
        // String sqlMapId = "Main.selectFromMainSearch";
        // Object result = mainDao.getSearchList(sqlMapId, dataMap);
        String sqpMapId = "Main.selectFromMainSearch";
        return mainDao.getSearchBeanList(sqpMapId, carInfo);
    }
        public Object getSearchCarList(Object dataMap) {
            String sqlMapId = "Main.selectFromMainSearchFilter";
            Object result = mainDao.getSearchCarList(sqlMapId, dataMap);
            return result;
        }

    //    public Object getFilterList(Object dataMap) {
    //     String sqlMapId = "Main.selectFromMainSearchFilter";
    //     Object result = mainDao.getFilterList(sqlMapId, dataMap);
    //     return result;
    //    }

    public Object getSearchList(Object dataMap) {
        String sqlMapId = "Main.selectFromMainSearch";
        Object result = mainDao.getSearchList(sqlMapId, dataMap);
        return result;
    }

    // 특가
    public Object getSpecialList(Object dataMap) {
        String sqlMapId = "Main.selectFromSpecialPrice";
        Object result = mainDao.getSpecialList(sqlMapId, dataMap);
        return result;
    }

    // 신차급
    public Object getNewCarList(Object dataMap) {
        String sqlMapId = "Main.selectFromNewCar";
        Object result = mainDao.getNewCarList(sqlMapId, dataMap);
        return result;
    }

    // 국산차
    public Object getDomesticList(Object dataMap) {
        String sqlMapId = "Main.selectFromDomestic";
        Object result = mainDao.getDomesticList(sqlMapId, dataMap);
        return result;
    }

    // 수입차
    public Object getImportedList(Object dataMap) {
        String sqlMapId = "Main.selectFromImported";
        Object result = mainDao.getImportedList(sqlMapId, dataMap);
        return result;
    }


    public Object selectCarImg(Object dataMap) {
        String sqlMapId = "CarDetail.selectCarImg";
        
        Object result = null;
        Map results = new HashMap<String, String>();
        
        String imgFiles = "Front";
        
            ((Map<String, Object>) dataMap).put("IMG_INFO", imgFiles);
            result = mainDao.getSpecialList(sqlMapId, dataMap);
            String fileName = (String)(((Map<String, Object>)result).get("ORIGINALFILE_NAME"));
            
            results.put(imgFiles, fileName);
        
        
        // 이미지 가져올 때 필요한 것 : 경로, 이미지파일 이름
        results.put("PHYSICALFILE_NAME", ((Map<String, Object>)mainDao.getSpecialList(sqlMapId, dataMap)).get("PHYSICALFILE_NAME"));
        
        return results;
        }
    }

