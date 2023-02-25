package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.RegisterDao;
import com.project.final_retoree.utils.CommonUtils;
import java.util.Map;

@Service
public class RegisterService {

    @Autowired
    RegisterDao registerDao;

    @Autowired
    CommonUtils commonUtils;

    // public Object getList(Object dataMap) {
    // String sqlmapId = "Register.selectFromRegister";
    // Object result = registerDao.getList(sqlmapId, dataMap);
    // return result;

    // }

    // 약관
    public Object insertagree(Object dataMap) {
        // TS_CS_ID 생성 + dataMap에 추가
        ((Map<String, Object>) dataMap).put("TS_CS_ID", commonUtils.getUniqueSequence());

        // 약관 insert
        String sqlMapId = "Register.insertagreeWithUID";
        Object result = registerDao.insert(sqlMapId, dataMap);

        // ts_cs_id 리턴하기
        result = ((Map<String, Object>) dataMap).get("TS_CS_ID");
        return result;
    }

    public Object insertregister(Object dataMap) {
        String sqlMapId = "Register.insertWithUID";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }
    // public Object insertagree(Object dataMap) {
    // String sqlMapId = "Register.insertagreeWithUID";
    // Object result = registerDao.insert(sqlMapId, dataMap);
    // return result;
    // }

    // public Object register(Object dataMap) {
    // Object result = this.insertregister(dataMap);
    // result = this.insertagree(dataMap);
    // return result;
    // }

    // public Object select(Object dataMap) {
    // String sqlMapId = "Register.selectFromRegister";
    // Object result = registerDao.getOne(sqlMapId, dataMap);
    // return result;
    // }

}
