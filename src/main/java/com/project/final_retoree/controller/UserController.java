package com.project.final_retoree.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.final_retoree.bean.MemberVo;
import com.project.final_retoree.bean.WishList;
import com.project.final_retoree.configurations.PrincipalUser;
import com.project.final_retoree.services.DealerSalesMgmtService;
import com.project.final_retoree.services.MainService;
import com.project.final_retoree.services.MyPageService;
import com.project.final_retoree.services.ReservationService;

@Controller
public class UserController {

    @Autowired
    ReservationService reservationService;

    @Autowired
    MyPageService myPageService;

    @Autowired
    MainService mainService;

    @Autowired
    DealerSalesMgmtService dealerSalesMgmtService;

    @Autowired
    WishList wishList;

    @Autowired
    private PasswordEncoder passwordEncoder;

    // 마이페이지
    @RequestMapping(value = "/myPage")
    public ModelAndView myPage(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // user_id ==> 나중에 세션으로 받아와야함

        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);

        Object wishList = myPageService.getWishList(params);
        Object myPagereserve = myPageService.getReserveList(params);
        Object userInfo = myPageService.getUserInfo(params);

        System.out.println(user_id);
        modelAndView.addObject("wishList", wishList);
        modelAndView.addObject("myPagereserve", myPagereserve);
        modelAndView.addObject("userInfo", userInfo);

        modelAndView.setViewName("myPage/myPage");
        return modelAndView;

    }

    // 찜한 차량 페이지
    @RequestMapping(value = "/wishListCar")
    public ModelAndView wishListCar(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // user_id ==> 나중에 세션으로 받아와야함
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        Object wishList = myPageService.getWishList(params);
        try {
            params.put("SOURCE_UNIQUE_SEQ", ((Map<String, Object>) wishList).get("CAR_ID"));
            Object carImgs = mainService.selectCarImg(params);
            modelAndView.addObject("carImgs", carImgs);
        } catch (Exception e) {
            System.out.println("empty");
        }

        modelAndView.addObject("wishList", wishList);

        modelAndView.setViewName("myPage/wishListCar");
        return modelAndView;

    }

    // 찜목록 삭제
    @RequestMapping(value = "/dltWishList")
    public ModelAndView dltWishList(String wishlist_id, @RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {

        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();
        // wishlist_id = wishList.setWishlist_id(wishlist_id);

        params.put("user_id", user_id);
        params.put("wishlist_id", wishlist_id);

        System.out.println(wishlist_id);
        System.out.println(user_id);

        System.out.println(params);

        Object dltWishList = myPageService.dltWishList(params);

        modelAndView.addObject("dltWishList", dltWishList);
        modelAndView.setViewName("myPage/wishListCar");
        return modelAndView;
    }

    // 1:1 상담 문의 내역
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contact(@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws Exception {

        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        Object contact = myPageService.getContactList(user_id, params);

        modelAndView.addObject("contact", contact);
        modelAndView.setViewName("myPage/contact");
        return modelAndView;

    }

    // 마이페이지 유저 정보 확인
    @RequestMapping(value = "/myPage_modify")
    public ModelAndView myPage_modify(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        Object userInfo = myPageService.getUserInfo(params);

        System.out.println(user_id);

        modelAndView.addObject("userInfo", userInfo);
        modelAndView.setViewName("myPage/myPage_modify");
        return modelAndView;

    }

    // 마이페이지 회원 정보 수정
    @RequestMapping(value = "/myPageEdit", method = RequestMethod.POST)
    public ModelAndView myPageEdit(Authentication auth, RedirectAttributes rttr,
            @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();
        String user_pw = principal.getPassword();

        params.put("user_id", user_id);
        params.put("user_pw", user_pw);
        Object editUserInfo = myPageService.editUserInfo(user_id, params);
        modelAndView.addObject("editUserInfo", editUserInfo);
        modelAndView.setViewName("main_search");

        // if(encoder.matches(user_id, user_pw)){
        // modelAndView.setViewName("myPage/myPage_modify");
        // } else {
        // rttr.addFlashAttribute("msg", "비밀번호를 다시 확인해주세요.");
        // }
        return modelAndView;
    }

    @RequestMapping(value = "/withdraw")
    public ModelAndView withdrawGet(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {

        // id, pw 얻기
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();
        String user_pw = principal.getPassword();

        // 담기
        params.put("user_id", user_id);
        params.put("user_pw", user_pw);

        modelAndView.setViewName("myPage/withdraw");

        return modelAndView;
    }

    @RequestMapping(value = "/withdraw", method = RequestMethod.POST)
    public ModelAndView withdrawPost(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // 비밀번호 확인
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();
        String user_pw = (String) params.get("password");

        if (passwordEncoder.matches(user_pw, principal.getPassword())) {

            // 세션 제거
            SecurityContextHolder.clearContext();
            // user 제거
            myPageService.deleteUser(user_id);
            // delete
            myPageService.delete(user_id);
            modelAndView.setViewName("myPage/withdrawConfirm");
            return modelAndView;

        } else {
            modelAndView.addObject("msg", "비밀번호가 일치하지 않습니다.");
            modelAndView.addObject("user", myPageService.getUserInfo(user_id));
            modelAndView.setViewName("myPage/withdraw");
            return modelAndView;
        }

    }

    // 방문 예약 페이지
    @RequestMapping(value = "/myPageVisitReserve", method = RequestMethod.GET)

    public ModelAndView myPageVisit_reserve(@RequestParam Map<String, Object> params, ModelAndView modelAndView)
            throws Exception {

        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);

        try {
            params.put("SOURCE_UNIQUE_SEQ", ((Map<String, Object>) wishList).get("CAR_ID"));
            Object carImgs = mainService.selectCarImg(params);
            modelAndView.addObject("carImgs", carImgs);
        } catch (Exception e) {
            System.out.println("empty");
        }

        // 방문 예약 정보
        Object reservation = reservationService.getUserReservation(params);
        modelAndView.addObject("reservation", reservation);

        modelAndView.setViewName("myPage/myPageVisitReserve");
        return modelAndView;

    }

    // 방문 예약 확인(상세페이지)
    @RequestMapping(value = "/visit_reserve/{reservation_id}", method = RequestMethod.GET)

    public ModelAndView visit_reserve(@RequestParam Map<String, Object> params, @PathVariable String reservation_id,
            ModelAndView modelAndView) throws Exception {

        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        // params.put("RESERVATION_ID", reservation_id);

        Object reservation = reservationService.getUserReservation(params);
        params.get("reservation_id");

        modelAndView.addObject("reservation", reservation);

        // 딜러 정보
        Object dealerInfo = dealerSalesMgmtService.getDealerName(params);
        modelAndView.addObject("dealerInfo", dealerInfo);

        // 판매 완료 차량
        Object soldOutList = dealerSalesMgmtService.getSoldOutCarList(params);
        modelAndView.addObject("soldOutList", soldOutList);

        // 판매중 차량
        Object salesList = dealerSalesMgmtService.getOnSaleCarList(params);
        modelAndView.addObject("salesList", salesList);

        modelAndView.setViewName("myPage/visit_reserve");
        return modelAndView;

    }

}
