package com.project.final_retoree.services;

import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.final_retoree.configurations.PrincipalUser;
import com.project.final_retoree.daos.RegisterDao;

@Service
public class PrincipalUserService implements UserDetailsService {

    @Autowired
    RegisterDao registerDao; // 재사용

    @Override
    // url /login 일때 spring scurity가 호출
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // query select with ID
        String sqlMapId = "Login.selectByUID";
        Object usernameObj = username;
        Map<String, String> resultMap = (Map<String, String>) registerDao.getOne(sqlMapId, usernameObj);

        // session 등록
        PrincipalUser principalUser = new PrincipalUser(resultMap);

        return principalUser;
    }

}
