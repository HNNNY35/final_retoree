package com.project.final_retoree.configurations;

import javax.crypto.EncryptedPrivateKeyInfo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;

@Configuration
public class SecurityConfiguraion {

    @Bean // filterChain 하나의 클래스로 여김(관리대상으로 여김)
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        // Non using csrf protection
        httpSecurity.csrf().disable();
        // 권한에 대한: url & roles : user url & role
        httpSecurity.authorizeRequests()

                .antMatchers("/user/*").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
                .antMatchers("/dealer/*").access("hasRole('ROLE_DEALER') or hasRole('ROLE_ADMIN')")
                .antMatchers("/admin/*").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/admin/**").authenticated()
                .antMatchers("/dealer/**").authenticated()
                .antMatchers("/myPage/**").authenticated()
                .antMatchers("/userlist/**").authenticated()
                .anyRequest().permitAll(); // 모두가 접속할 수 있는,로그인 필요x

        // 로그인에 대한
        httpSecurity.formLogin().loginPage("/loginform") // 로그인을 하면 페이지를 지정
                .failureUrl("/loginform?fail=true")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/");

        return httpSecurity.build();
    }

    @Bean
    public BCryptPasswordEncoder encoderPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
   
    // @Override
    // public void configure(WebSecurity web) throws Exception {
    //     web.httpFirewall((null))
    // }
    
    @Bean
    public HttpFirewall defauHttpFirewall(){
        return new DefaultHttpFirewall();
    }
}