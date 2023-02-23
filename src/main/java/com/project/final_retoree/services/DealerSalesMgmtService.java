package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.DealerSalesMgmtDao;

@Service
public class DealerSalesMgmtService {
    @Autowired
    DealerSalesMgmtDao dealerSalesMgmtDao;

    public Object getDealerName(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromUserInfoByDEALER_ID";
        Object result = dealerSalesMgmtDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getOnSaleCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromOnSaleCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getSoldOutCarList(Object dataMap){
        String sqlMapId = "DealerSalesMgmt.selectFromSoldoutCARByDEALER_ID";
        Object result = dealerSalesMgmtDao.getList(sqlMapId, dataMap);
        return result;
    }
}
