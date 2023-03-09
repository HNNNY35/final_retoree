package com.project.final_retoree.daos;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.final_retoree.bean.MemberVo;
import com.project.final_retoree.bean.WishList;

@Component
public class MypageDao {
    
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    WishList wishList;

  
    //찜 목록
    public Object getWishList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    //찜 목록 삭제
    public Object dltWishList(String sqlMapId,  Object dataMap) {
        Object result = sqlSessionTemplate.delete(sqlMapId, dataMap);
        return result;
    }
    
    //유저 정보 
    public Object getUserInfo(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;

    }

    //유저 정보 수정
    public Object updateUserInfo(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.update(sqlMapId, dataMap);
        return result;

    }

    //회원 탈퇴
    public Object withdraw(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.delete(sqlMapId, dataMap);
        return result;
    }

    public boolean checkPw(String user_id, String user_pw){
        boolean result = false;
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user_id", user_id);
        map.put("user_pw", user_pw);

        Object count = sqlSessionTemplate.selectOne("Mypage.checkPw", map);
        if((int)count ==1) result = true;
        return result;
    }
    
    //방문 예약 정보
    public Object getReserveList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

   
    //1:1 상담 예약 
    public Object getContactList(String sqlMapId, Object dataMap) {
        Object result = sqlSessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    public Object delete(String sqlMapId, String user_id) {
        Object result = sqlSessionTemplate.delete(sqlMapId, user_id);
        return result;
    }

}
