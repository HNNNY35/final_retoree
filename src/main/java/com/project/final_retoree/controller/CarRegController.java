package com.project.final_retoree.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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
import com.project.final_retoree.utils.CommonUtils;

@Controller
public class CarRegController {
    @Autowired
    CarRegService carRegService;

    @Autowired
    CommonUtils commonUtils;

    // url : http://localhost:8080/car_reg/U002
    @RequestMapping(value = "/car_reg/{dealer_id}", method = RequestMethod.GET)
    public ModelAndView car_reg(@RequestParam Map<String, Object> params, @PathVariable String dealer_id, ModelAndView modelAndView) {
        modelAndView.addObject("DEALER_ID", dealer_id);
        modelAndView.setViewName("dealer/car_reg");
        return modelAndView;
    }

    @RequestMapping(value = "/car_reg_img", method = RequestMethod.POST)
    public ModelAndView car_reg_submit(MultipartHttpServletRequest multipartHttpServletRequest,@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws IOException {
        
        
        Object car_id = carRegService.insertCarDetail(params);
        modelAndView.addObject("CAR_ID", car_id);
        modelAndView.setViewName("dealer/car_reg_img");

        return modelAndView;
    }
 
    // 정보 입력 후 car_id 받아서 차량 이미지 첨부하기
    @RequestMapping(value = "/car_reg_submit", method = RequestMethod.POST)
    public ModelAndView car_reg_img(MultipartHttpServletRequest multipartHttpServletRequest,@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws IOException {
        
        Iterator<String> fileNames =  multipartHttpServletRequest.getFileNames();
        String absolutePath = commonUtils.getRelativeToAbsolutePath("src/main/resources/static/files/");
        
        Map attachfile = null;
        List attachfiles = new ArrayList();
        String physicalFileName = commonUtils.getUniqueSequence();

        String storePath = absolutePath + physicalFileName + File.separator;
        File newPath = new File(storePath);
        newPath.mkdir();
        
        while(fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName = multipartFile.getOriginalFilename();
            if(originalFileName != null && multipartFile.getSize() > 0){

            String storePathFilename = storePath + originalFileName;
            multipartFile.transferTo(new File(storePathFilename));

            attachfile = new HashMap<>();
            attachfile.put("ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
            attachfile.put("SOURCE_UNIQUE_SEQ", params.get("CAR_ID"));
            attachfile.put("ORIGINALFILE_NAME", originalFileName);
            attachfile.put("PHYSICALFILE_NAME", physicalFileName);
            
            attachfiles.add(attachfile);
            }
        }

        params.put("attachfiles", attachfiles);

        Object resultMap = carRegService.insertFiles(params);

        modelAndView.setViewName("dealer/car_reg_submit");
        return modelAndView;
        
    }
}