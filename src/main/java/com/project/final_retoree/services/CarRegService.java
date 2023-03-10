package com.project.final_retoree.services;

import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.final_retoree.daos.CarRegDao;
import com.project.final_retoree.daos.AttachFileDao;
import com.project.final_retoree.utils.CommonUtils;

@Service
public class CarRegService {
    @Autowired
    CarRegDao carRegDao;

    @Autowired
    AttachFileDao attachFileDao;
    
    @Autowired
    CommonUtils commonUtils;
    // car_id, status_id, dealer_id 받기 + car_dtl_id 생성해서 car_detaile_info에 insert후 car_id 리턴하기
    public Object insertCarDetail(Object dataMap){
        
        Object car_dtl_id = commonUtils.getUniqueSequence();
        ((Map<String, Object>) dataMap).put("CAR_DTL_ID", car_dtl_id);
        ((Map<String, Object>) dataMap).put("CAR_ID", this.insertMergeCarInfo(dataMap));
        ((Map<String, Object>) dataMap).put("STATUS_ID", this.insertSaleStatus(dataMap));
        ((Map<String, Object>) dataMap).put("DEALER_ID", ((Map<String, Object>) dataMap).get("DEALER_ID"));


        String sqlMapId = "CarReg.insertCarDetailInfo";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("CAR_ID");
        return result;
    }

    // 패널id, 스켈레톤id 받고, uid 생성 후 car_info에 insert
    public Object insertMergeCarInfo(Object dataMap){
        // Object panelId = this.insertPanelInfo(dataMap);
        // Object skeletonId = this.insertSkeleton(dataMap);

        ((Map<String, Object>) dataMap).put("CAR_ID", commonUtils.getUniqueSequence());
        ((Map<String, Object>) dataMap).put("PANER_ID", this.insertPanelInfo(dataMap));
        ((Map<String, Object>) dataMap).put("SKELETON_ID", this.insertSkeleton(dataMap));
        
        String sqlMapId = "CarReg.insertCarInfoWithUID";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("CAR_ID");

        return result;
    }

    // 패널uid 생성 후 insert => uid 리턴
    public Object insertPanelInfo(Object dataMap){
        ((Map<String, Object>) dataMap).put("PANER_ID", commonUtils.getUniqueSequence());

        String sqlMapId = "CarReg.insertPanelWithUID";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("PANER_ID");
        return result;
    }

    // 스켈레톤uid 생성 후 insert => uid 리턴
    public Object insertSkeleton(Object dataMap){
        ((Map<String, Object>) dataMap).put("SKELETON_ID", commonUtils.getUniqueSequence());

        String sqlMapId = "CarReg.insertSkeletonWithUID";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("SKELETON_ID");
        return result;
    }
    
    // 판매상태uid 생성 후 insert => uid 리턴
    public Object insertSaleStatus(Object dataMap){
        ((Map<String, Object>) dataMap).put("STATUS_ID", commonUtils.getUniqueSequence());

        String sqlMapId = "CarReg.insertSaleStatus";
        Object result = carRegDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("STATUS_ID");
        return result;
    }

    // 첨부받은 이미지들 CIP_ATTACHFILE에 insert => CAR_IMG에도 insert
    public Object insertFiles(Object dataMap){
        String sqlMapId = "AttachFile.insertMulti";
        Object result = attachFileDao.insert(sqlMapId, dataMap);

        // ((Map<String, Object>) dataMap).put("CAR_IMG_ID", ((Map<String, Object>) dataMap).get("CAR_ID"));

        sqlMapId = "AttachFile.insertMultiCarImg";
        result = attachFileDao.insert(sqlMapId, dataMap);
        return result;
    }
}
