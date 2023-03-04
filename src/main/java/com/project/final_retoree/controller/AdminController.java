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

}
