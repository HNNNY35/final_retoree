package com.project.final_retoree.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.final_retoree.bean.CarInfo;

@Component
public class MainDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<CarInfo> getSearchBeanList(String sqlMapId, CarInfo carInfo) throws Exception {

        return sqlSessionTemplate.selectList(sqlMapId, carInfo);
    }

    // Read
    public Object getSearchList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    // 특가
    public Object getSpecialList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    // 신차급
    public Object getNewCarList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    // 국산차
    public Object getDomesticList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    // 수입차
    public Object getImportedList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

}
