package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @RequestMapping(value = "/car_detail_change")
    public ModelAndView car_detail(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/car_detail_change");
        return modelAndView;

    }

    @RequestMapping(value = "/car_reg")
    public ModelAndView car_reg(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/car_reg");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_FNA_page01")
    public ModelAndView cs_FNA_page01(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_FNA_page01");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_main")
    public ModelAndView cs_main(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_main");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question")
    public ModelAndView cs_question(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_question");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_input")
    public ModelAndView cs_question_input(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_question_input");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_mylist")
    public ModelAndView cs_question_mylist(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_question_mylist");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_mylist_detail")
    public ModelAndView cs_question_mylist_detail(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/cs_question_mylist_detail");
        return modelAndView;

    }

    @RequestMapping(value = "/dealer_info_modify")
    public ModelAndView dealer_info_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/dealer_info_modify");
        return modelAndView;

    }

    @RequestMapping(value = "/dealer_main")
    public ModelAndView dealer_main(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/dealer_main");
        return modelAndView;

    }

    @RequestMapping(value = "/event")
    public ModelAndView event(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/event");
        return modelAndView;

    }

    @RequestMapping(value = "/event_page_01")
    public ModelAndView event_page_01(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/event_page_01");
        return modelAndView;

    }

    @RequestMapping(value = "/event_page_02")
    public ModelAndView event_page_02(ModelAndView modelAndView) {
        modelAndView.setViewName("/event_page_02");
        return modelAndView;

    }

    @RequestMapping(value = "/notice")
    public ModelAndView notice(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_page")
    public ModelAndView notice_page(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice_page");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_page_01")
    public ModelAndView notice_page_01(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice_page_01");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_page_02")
    public ModelAndView notice_page_02(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice_page_02");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_page_03")
    public ModelAndView notice_page_03(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice_page_03");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_page_04")
    public ModelAndView notice_page_04(ModelAndView modelAndView) {
        modelAndView.setViewName("/admin/notice_page_04");
        return modelAndView;

    }
}
