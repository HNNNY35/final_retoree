package com.project.final_retoree.utils;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class InitializeNoticeNo {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    public int initializeNoticeNo(){
        String sqlMapId = "Util.selectLastNoticeNo";
        HashMap<String, Integer> result = sqlSessionTemplate.selectOne(sqlMapId);
        int NoticeNo;
        if(result == null){
            NoticeNo = 0;
        }else{
            NoticeNo = result.get("NOTICE_NO");
        }
        NoticeNo++;
        return NoticeNo;
    }

}
