package com.project.final_retoree.configurations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

public class PrincipalUser implements UserDetails {

    private Map<String, Object> userInfo;

    public PrincipalUser(Map userInfo) {
        if (userInfo == null) {
            throw new IllegalArgumentException("userInfo cannot be null");
        }
        this.userInfo = userInfo;
    }

    // 인증된 사용자가 가진 권한 정보를 collections에 담아 반환하는 메서드
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        Collection<GrantedAuthority> collections = new ArrayList<>();
        String authority = (String) userInfo.get("AUTH");
        if (StringUtils.hasText(authority)) {
            collections.add(new SimpleGrantedAuthority(authority));
        } else {
            collections.add(new SimpleGrantedAuthority("ROLE_ANONYMOUS"));
        }
        return collections;
    }

    @Override
    public String getPassword() {
        // Password
        return (String) userInfo.get("PASSWORD");
    }

    @Override
    public String getUsername() {
        // ID
        return (String) userInfo.get("ID");
    }

    @Override
    public boolean isAccountNonExpired() {
        // 계정 만료 여부
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // 계정 잠길 여부
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        // 비밀번호 변경기간 만료
        return true;
    }

    @Override
    public boolean isEnabled() {
        // 휴먼계정 여부 확인
        return true;
    }
}
