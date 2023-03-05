package com.project.final_retoree.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.UserInfoAdminService;

@Controller
public class UserInfoAdminController {

    @Autowired
    UserInfoAdminService userInfoAdminService;

    // 회원정보페이지
    @RequestMapping(value = "/userlist", method = RequestMethod.GET)
    public ModelAndView userlist(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = userInfoAdminService.getListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/user_info_admin");
        return modelAndView;
    }

    // Pagination
    @RequestMapping(value = "/listPagination/{currentPage}", method = RequestMethod.GET)
    public ModelAndView listPagination(@RequestParam Map<String, Object> params, @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = userInfoAdminService.getListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/user_info_admin");
        return modelAndView;
    }

    // 회원정보수정
    @RequestMapping(value = "/useredit/{userId}", method = RequestMethod.POST)
    public ModelAndView useredit(@RequestParam Map<String, Object> params,
            @PathVariable String userId,
            ModelAndView modelAndView) {
        params.put("USER_ID", userId);
        Object resultMap = userInfoAdminService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/user_info_admin_edit");
        return modelAndView;
    }

    // 회원정보업데이트
    @RequestMapping(value = "/userupdate", method = RequestMethod.POST)
    public ModelAndView userupdate(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = userInfoAdminService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/user_info_admin");
        return modelAndView;
    }

    // 회원정보삭제
    @RequestMapping(value = "/userdelete/{userId}", method = RequestMethod.POST)
    public ModelAndView userdelete(@RequestParam Map<String, Object> params, @PathVariable String userId,
            ModelAndView modelAndView) {
        params.put("USER_ID", userId);
        Object resultMap = userInfoAdminService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("redirect:/listPagination/1");
        return modelAndView;

    }

}
