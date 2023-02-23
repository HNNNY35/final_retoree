package com.project.final_retoree.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MainDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

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
