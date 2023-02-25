package com.project.final_retoree.services;

import java.util.List;

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

}
