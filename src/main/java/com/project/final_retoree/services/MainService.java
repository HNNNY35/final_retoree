package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.MainDao;

@Service
public class MainService {
    @Autowired
    MainDao mainDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "Main.selectFromMain";
        Object result = mainDao.getList(sqlMapId, dataMap);
        return result;
    }
}
