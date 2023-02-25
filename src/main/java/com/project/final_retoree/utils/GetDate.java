package com.project.final_retoree.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;


@Component
public class GetDate {
   
    public String getDate(){
        String pattern = "yyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        Date now = new Date();
        String nowString = simpleDateFormat.format(now);
        return nowString;
    }
}
