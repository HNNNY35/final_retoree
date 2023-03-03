package com.project.final_retoree.services;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.final_retoree.bean.WishList;
import com.project.final_retoree.daos.MypageDao;

@Service
public class MyPageService {
    
    @Autowired
    MypageDao myPageDao;
    @Autowired
    WishList wishlist;
    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    //찜 목록
    public Object getWishList(Object dataMap) {
        String sqlMapId = "Mypage.selectFromWishList";
        Object result = myPageDao.getWishList(sqlMapId, dataMap);
        return result;
    }

    // 찜 해제 삭제
    public Object dltWishList(WishList wishlist){
        String sqlMapId = "Mypage.deleteFromWishList";
        Object result = myPageDao.dltWishList(sqlMapId, wishlist);

        return result;

    }
    //유저 정보 Read
    public Object getUserInfo(Object dataMap) {
        String sqlMapId = "Mypage.selectFromUserInfo";
        Object result = myPageDao.getUserInfo(sqlMapId, dataMap);

        return result;
    }
    //유저 정보 수정
    public Object editUserInfo(String user_id, Object dataMap) {
        String sqlMapId = "Mypage.updateFromMyPage";
        String password = (String) ((Map) dataMap).get("password");
        ((Map) dataMap).put("password", bcryptPasswordEncoder.encode(password)); // 패스워드를 암호화하는

        Object result = myPageDao.updateUserInfo(sqlMapId, dataMap);

        return result;
    }

    //회원 탈퇴 
    public Object withdraw(String user_id){
        int result = MypageDao.withdraw(user_id);
        return result;
    }
    //방문예약 정보 Read
    public Object getReserveList(Object dataMap) {
        String sqlMapId = "Mypage.selectFromReserveList";
        Object result = myPageDao.getReserveList(sqlMapId, dataMap);
        return result;
    }

    public Object getContactList(String user_id, Object dataMap) {
        String sqlMapId = "Mypage.selectFromContact";
        Object result = myPageDao.getContactList(sqlMapId, dataMap);
        return result;
    }
}
