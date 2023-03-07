package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.daos.RegisterDao;
import com.project.final_retoree.utils.CommonUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RegisterService {

    @Autowired
    RegisterDao registerDao;

    @Autowired
    CommonUtils commonUtils;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    // 약관
    public Object insertagree(Object dataMap) {
        ((Map<String, Object>) dataMap).put("TS_CS_ID", commonUtils.getUniqueSequence());
        String sqlMapId = "Register.insertagreeWithUID";
        Object result = registerDao.insert(sqlMapId, dataMap);
        result = ((Map<String, Object>) dataMap).get("TS_CS_ID");
        return result;
    }

    public Object insertregister(Object dataMap) {
        String sqlMapId = "Register.insertWithUID";
        // normal to crupto password
        String password = (String) ((Map) dataMap).get("PASSWORD");
        ((Map) dataMap).put("PASSWORD", bcryptPasswordEncoder.encode(password)); // 패스워드를 암호화하는
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    public void SignUp(Object dataMap) {
        ((Map) dataMap).put("USER_ID", commonUtils.getUniqueSequence());
        this.insertregister(dataMap);
        this.insertUser(dataMap);

    }

    public Object insertUser(Object dataMap) {
        String sqlMapId = "Register.insertUser";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertAdmin(Object dataMap) {
        String sqlMapId = "Register.insertAdmin";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    // 딜러 insert
    public Object insertDealer(Object dataMap) {
        String sqlMapId = "Register.insertDealer";
        Object result = registerDao.insert(sqlMapId, dataMap);
        return result;
    }

    // // 딜러 ID
    // public void DealerSignUp(Object dataMap) {
    // ((Map) dataMap).put("DEALER_ID", commonUtils.getUniqueSequence());
    // this.insertregister(dataMap);
    // this.insertDealer(dataMap);
    // }

    // public Object getList(Object dataMap) {
    // String sqlMapId = "Register.selectFromDealerinfo";
    // Object result = registerDao.getList(sqlMapId, dataMap);
    // return result;
    // }

    // 딜러 update
    // public Object update(Object dataMap) {
    // String sqlMapId = "Register.updateByDealerID";
    // Object result = registerDao.update(sqlMapId, dataMap);
    // return result;
    // }

    // public Object updateAndGetList(Object dataMap) {
    // this.update(dataMap);
    // Object result = this.getList(dataMap);
    // return result;
    // }

}
