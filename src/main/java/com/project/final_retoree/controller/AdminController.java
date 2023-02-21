package com.project.final_retoree.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @RequestMapping(value = "/cs_FNA_page01")
    public ModelAndView cs_FNA_page01(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_FNA_page01");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_main")
    public ModelAndView cs_main(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_main");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question")
    public ModelAndView cs_question(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_question");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_input")
    public ModelAndView cs_question_input(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_question_input");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_mylist")
    public ModelAndView cs_question_mylist(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_question_mylist");
        return modelAndView;

    }

    @RequestMapping(value = "/cs_question_mylist_detail")
    public ModelAndView cs_question_mylist_detail(ModelAndView modelAndView) {
        modelAndView.setViewName("cs/cs_question_mylist_detail");
        return modelAndView;

    }

    @RequestMapping(value = "/dealer_info_modify")
    public ModelAndView dealer_info_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("dealer/dealer_info_modify");
        return modelAndView;

    }

    @RequestMapping(value = "/dealer_main")
    public ModelAndView dealer_main(ModelAndView modelAndView) {
        modelAndView.setViewName("dealer/dealer_main");
        return modelAndView;

    }

    @RequestMapping(value = "/event")
    public ModelAndView event(ModelAndView modelAndView) {
        modelAndView.setViewName("event/event");
        return modelAndView;

    }

    @RequestMapping(value = "/event_page_01")
    public ModelAndView event_page_01(ModelAndView modelAndView) {
        modelAndView.setViewName("event/event_page_01");
        return modelAndView;

    }

    @RequestMapping(value = "/event_page_02")
    public ModelAndView event_page_02(ModelAndView modelAndView) {
        modelAndView.setViewName("event/event_page_02");
        return modelAndView;

    }

    @RequestMapping(value = "/notice")
    public ModelAndView notice(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_contents")
    public ModelAndView notice_page(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_contents");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_contents_01")
    public ModelAndView notice_page_01(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_contents_01");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_contents_02")
    public ModelAndView notice_page_02(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_contents_02");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_contents_03")
    public ModelAndView notice_page_03(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_contents_03");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_contents_04")
    public ModelAndView notice_page_04(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_contents_04");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_edit")
    public ModelAndView notice_edit(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_edit");
        return modelAndView;

    }

    @RequestMapping(value = "/notice_modify")
    public ModelAndView notice_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("notice/notice_modify");
        return modelAndView;

    }
}
