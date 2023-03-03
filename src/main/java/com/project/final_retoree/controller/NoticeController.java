package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.configurations.PrincipalUser;
import com.project.final_retoree.services.NoticeService;
import com.project.final_retoree.utils.CommonUtils;
import com.project.final_retoree.utils.GetDate;
import com.project.final_retoree.utils.InitializeNoticeNo;

@Controller
public class NoticeController {
    @Autowired
    NoticeService noticeService;
    @Autowired
    CommonUtils commonUtils;
    @Autowired
    InitializeNoticeNo init;
    @Autowired
    GetDate getDate;

    String noticePath = "redirect:/notice";

    @RequestMapping(value = {"/notice"}, method = RequestMethod.GET)
    public ModelAndView noticeGet(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        Object resultMap = noticeService.getList(params);
        Object noticeTopMap = noticeService.getNoticeTopList(params);
        
        modelAndView.addObject("noticeTopMap", noticeTopMap);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("notice/notice");
        return modelAndView;
    }

    @RequestMapping(value = {"/notice"}, method = RequestMethod.POST)
    public String noticePost(@RequestParam Map<String, Object> params) {
        params.put("NOTICE_ID", commonUtils.getUniqueSequence());
        params.put("NOTICE_NO", init.initializeNoticeNo());
        params.put("NOTICE_DATE", getDate.getDate());

        //insert
        noticeService.insert(params);
        return noticePath;
    }
    @RequestMapping(value = "/notice/{notice_no}", method = RequestMethod.GET)
    // @RequestMapping(value = "/car_detail_change")
    public ModelAndView car_detail(@RequestParam Map<String, Object> params, @PathVariable String notice_no, ModelAndView modelAndView) {

        params.put("NOTICE_NO", notice_no);
        Object notice = noticeService.getOne(params);
        modelAndView.addObject("notice", notice);
        modelAndView.setViewName("notice/notice_contents");
        return modelAndView;
    }

    @RequestMapping(value = "/notice_edit")
    public ModelAndView notice_edit(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_edit");
        return modelAndView;
    }

    @RequestMapping(value = "/notice_delete/{notice_no}")
    public String notice_delete(@RequestParam Map<String, Object> params, @PathVariable String notice_no) {
        params.put("NOTICE_NO", notice_no);
        noticeService.delete(params);
        return noticePath;
    }

    @RequestMapping(value = "/notice_modify/{notice_no}", method = RequestMethod.GET)
    public ModelAndView notice_modify_in(@RequestParam Map<String, Object> params, @PathVariable String notice_no, ModelAndView modelAndView) {
        params.put("NOTICE_NO", notice_no);
        Object notice = noticeService.getOne(params);
        modelAndView.addObject("notice", notice);
        modelAndView.setViewName("notice/notice_modify");
        return modelAndView;
    }

    @RequestMapping(value = "/notice_modify", method = RequestMethod.POST)
    public String notice_modify_out(@RequestParam Map<String, Object> params) {
        noticeService.update(params);
        return noticePath;
    }
    
}
