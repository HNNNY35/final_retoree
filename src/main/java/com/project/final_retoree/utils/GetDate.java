package com.project.final_retoree.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;


@Component
public class GetDate {
    //오늘 날짜를 리턴
    public String getDate(){
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        Date now = new Date();
        String nowString = simpleDateFormat.format(now);
        return nowString;
    }
}
