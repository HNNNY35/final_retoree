package com.project.final_retoree.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.CarRegService;

@Controller
public class CarRegController {
    @Autowired
    CarRegService carRegService;

    // url : http://localhost:8080/car_reg/U002
    @RequestMapping(value = "/car_reg/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView car_reg(@RequestParam Map<String, Object> params, @PathVariable String dealer_id, ModelAndView modelAndView) {
        modelAndView.addObject("DEALER_ID", dealer_id);
        modelAndView.setViewName("dealer/car_reg");
        return modelAndView;
    }

    @RequestMapping(value = "/car_reg_submit", method = RequestMethod.POST)
    public ModelAndView car_reg_submit(MultipartHttpServletRequest multipartHttpServletRequest,@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws IOException {
        
        Iterator<String> fileNames =  multipartHttpServletRequest.getFileNames();
        // 이거로 하면 구름에서 저장 안됨
        String relativePath = "C:\\Develops\\final_retoree\\src\\main\\resources\\static\\files";
        while(fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName =  "imgFront_" + multipartFile.getOriginalFilename();
            String storePath = relativePath + originalFileName;
            multipartFile.transferTo(new File(storePath));
        }



        // // 이미지파일 가져오기
        // MultipartFile multipartFile = multipartHttpServletRequest.getFile("DTL_IMG_CAR");
        // String fileName =  multipartFile.getOriginalFilename();

        // String relativePath = "src\\main\\resources\\static\\files\\";

        // // 파일 저장하기
        // BufferedWriter bufferedWriter = Files.newBufferedWriter(Paths .get(relativePath+fileName)) ;
        // bufferedWriter.write(new String(multipartFile.getBytes()));
        // bufferedWriter.flush();

        // params.put("DTL_IMG_CAR", bufferedWriter);
        Object car_dtl_id = carRegService.insertCarDetail(params);
        modelAndView.addObject("car_dtl_id", car_dtl_id);
        modelAndView.setViewName("dealer/car_reg_submit");

        return modelAndView;
    }
 
    // 등록 완료 후 상세페이지 조회하기 링크
    


    
}
