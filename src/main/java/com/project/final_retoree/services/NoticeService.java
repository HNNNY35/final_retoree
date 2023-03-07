package com.project.final_retoree.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.NoticeDao;

@Service
public class NoticeService {

    @Autowired
    NoticeDao noticeDao;

    public Object insert(Object dataMap) {
        String sqlMapId = "Notice.insertBoard";
        
        Object result = noticeDao.insert(sqlMapId, dataMap);
        return result;
    }
    public Object getList(Object dataMap){
        String sqlMapId = "Notice.selectNoticeBoard";
        Object result = noticeDao.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getNoticeTopList(Object dataMap){
        String sqlMapId = "Notice.selectNoticeBoardTop";
        Object result = noticeDao.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getOne(Object dataMap){
        String sqlMapId = "Notice.selectNoticeBoardOne";
        Object result = noticeDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap){
        String sqlMapId = "Notice.deleteFromNoticeNo";
        Object result = noticeDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap){
        String sqlMapId = "Notice.updateFromNoticeNo";
        Object result = noticeDao.update(sqlMapId, dataMap);
        return result;
    }
    public Object getOneId(Object dataMap){
        String sqlMapId = "Dealer.selectFromUserInfoByDEALER_ID";
        Object result = noticeDao.getOne(sqlMapId, dataMap);
        return result;
    }
}
