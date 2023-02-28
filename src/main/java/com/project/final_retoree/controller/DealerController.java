package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.DealerService;

@Controller
@RequestMapping(value = "/dealer")
public class DealerController {
    @Autowired
    DealerService dealerService;

    @RequestMapping(value = "/mypage/{user_id}")
    public ModelAndView myPage(ModelAndView modelAndView, @PathVariable String user_id, @RequestParam Map<String, Object> params) {

        params.put("USER_ID", user_id);
        //sql
        Object user = dealerService.getOne(params);
        modelAndView.addObject("user", user);
        modelAndView.setViewName("dealer/dealer_main");
        return modelAndView;
    }

   
    @RequestMapping(value = {"/modify/{user_id}"}, method = RequestMethod.GET)
    public ModelAndView edit(ModelAndView modelAndView, @PathVariable String user_id, @RequestParam Map<String, Object> params) {
        params.put("USER_ID", user_id);

        Object user = dealerService.getOne(params);
        modelAndView.addObject("user", user);

        modelAndView.setViewName("dealer/dealer_info_modify");
        return modelAndView;
    }

    @RequestMapping(value = {"/modify"}, method = RequestMethod.POST)
    public String edit(@RequestParam Map<String, Object> params) {
        
        dealerService.update(params);
        String path = "redirect:/dealer/mypage/" + params.get("USER_ID");

        return path ;
    }
}
