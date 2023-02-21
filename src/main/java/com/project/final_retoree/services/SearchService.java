package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.SearchDao;

@Service
public class SearchService {
    @Autowired
    SearchDao searchDao;
    
    public Object getList(Object dataMap){
        String sqlMapId = "Search.selectFromCAR_INFO";
        Object result = searchDao.getList(sqlMapId, dataMap);
        return result;
    }
}
