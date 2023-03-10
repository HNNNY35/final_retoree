package com.project.final_retoree.services;

import java.util.HashMap;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;

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
    @Autowired
    SqlSession sqlSession;
    
    //찜 목록
    public Object getWishList(Object dataMap) {
        String sqlMapId = "Mypage.selectFromWishList";
        Object result = myPageDao.getWishList(sqlMapId, dataMap);
        return result;
    }

    // 찜 해제 삭제
    public Object dltWishList(Object dataMap){
        String sqlMapId = "Mypage.deleteFromWishList";
        Object result = myPageDao.dltWishList(sqlMapId, dataMap);

        return result;

    }
    //유저 정보 Read
    public Object getUserInfo(Object dataMap) {
        String sqlMapId = "Mypage.selectFromUserInfo";
        Object result = myPageDao.getUserInfo(sqlMapId, dataMap);
        System.out.println(dataMap);
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
    public Object withdraw(Object dataMap){
        String sqlMapId ="Mypage.deleteFromMyInfo";

        Object result = myPageDao.withdraw(sqlMapId, dataMap);
        return result;
    }

    //비밀번호 체크
    public boolean checkPw(String user_id, String user_pw){
            return myPageDao.checkPw(user_id, user_pw);
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

    public Object delete(String user_id){
        String sqlMapId = "Mypage.deleteFromUserId";
        Object result = myPageDao.delete(sqlMapId, user_id);
        return result;
    }
    public Object deleteUser(String user_id){
        String sqlMapId = "Mypage.deleteUserFromUserId";
        Object result = myPageDao.delete(sqlMapId, user_id);
        return result;
    }


}
