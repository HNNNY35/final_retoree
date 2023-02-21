package com.project.final_retoree.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MainDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    // Read
    public Object getList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    // Create

    // Update

    // Delete
}
