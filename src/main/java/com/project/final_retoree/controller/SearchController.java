package com.project.final_retoree.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.SearchService;

@Controller
public class SearchController {
     @Autowired
    SearchService searchService;

    @RequestMapping(value = {"/search"}, method = RequestMethod.GET)
    public ModelAndView searchGet(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = searchService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("users_ etc/search");
        return modelAndView;

    }

    @RequestMapping(value = {"/search"}, method = RequestMethod.POST)
    public ModelAndView searchPost(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = searchService.getListWithFilter(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("users_ etc/search");
        return modelAndView;

    }
}
