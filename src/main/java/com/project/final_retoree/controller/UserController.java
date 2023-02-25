package com.project.final_retoree.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.final_retoree.services.ReservationService;

@Controller
public class UserController {

    @Autowired
    ReservationService reservationService;

    @RequestMapping(value = "/myPage")
    public ModelAndView myPage(ModelAndView modelAndView) {
        modelAndView.setViewName("myPage/myPage");
        return modelAndView;

    }

    @RequestMapping(value = "/myPage_modify")
    public ModelAndView myPage_modify(ModelAndView modelAndView) {
        modelAndView.setViewName("myPage/myPage_modify");
        return modelAndView;

    }

    // 방문 예약 확인
    @RequestMapping(value = "/visit_reserve/{user_id}", method = RequestMethod.GET)
    public ModelAndView visit_reserve(@RequestParam Map<String, Object> params, @PathVariable String user_id,
            ModelAndView modelAndView) throws Exception {

        params.put("USER_ID", user_id);
        Object reservation = reservationService.getUserReservation(params);

        modelAndView.addObject("reservation", reservation);
        modelAndView.setViewName("users_ etc/visit_reserve");
        return modelAndView;

    }

}
