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

import com.project.final_retoree.bean.WishList;
import com.project.final_retoree.configurations.PrincipalUser;
import com.project.final_retoree.services.DealerSalesMgmtService;
import com.project.final_retoree.services.MyPageService;
import com.project.final_retoree.services.ReservationService;

@Controller
public class UserController {

    @Autowired
    ReservationService reservationService;

    @Autowired
    MyPageService myPageService;

    @Autowired
    DealerSalesMgmtService dealerSalesMgmtService;

    @Autowired
    WishList wishList;

    private PasswordEncoder encoder;

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
    
    //찜한 차량 페이지
    @RequestMapping(value = "/wishListCar")
    public ModelAndView wishListCar(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // user_id ==> 나중에 세션으로 받아와야함 
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        Object wishList = myPageService.getWishList(params);

        System.out.println(user_id);
        System.out.println(wishList);
        modelAndView.addObject("wishList", wishList);

        modelAndView.setViewName("myPage/wishListCar");
        return modelAndView;

    }

    // 찜목록 삭제
    @RequestMapping(value = "/dltWishList" )
     public ModelAndView dltWishList(String wishlist_id, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {

             PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
             String user_id = principal.getUser_id();
            //  wishlist_id = wishList.setWishlist_id(wishlist_id);
             
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

     //1:1 상담 문의 내역
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

    //마이페이지 유저 정보 확인
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

    //마이페이지 회원 정보 수정
    @RequestMapping(value= "/myPageEdit", method = RequestMethod.POST)
    public ModelAndView myPageEdit(Authentication auth, RedirectAttributes rttr, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
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
        //     rttr.addFlashAttribute("msg", "비밀번호를 다시 확인해주세요.");
        // }
        return modelAndView;
    }

   


    @RequestMapping(value = "/withdraw", method = RequestMethod.GET)
    // 버튼을 통해 넘어왔기 때문에 무조건 get post는 폼에서 post를 지정해줘야 가능함.
     public ModelAndView withdraw(RedirectAttributes redirectAttr, @RequestParam Map<String, Object> params, 
                                     ModelAndView modelAndView, SessionStatus sessionStatus){

        //id, pw 얻기                                
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();
        String user_pw = principal.getPassword();
        
        //담기
        params.put("user_id", user_id);
        params.put("user_pw", user_pw);
        
        if(sessionStatus.isComplete()==false) sessionStatus.isComplete();

        Object result = myPageService.withdraw(params);
        modelAndView.addObject("result", result);
    
        try {
            if(result == null ) {
                redirectAttr.addFlashAttribute("msg", "회원탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.");
                SecurityContextHolder.clearContext();
            }
                else
                redirectAttr.addFlashAttribute("msg", "회원정보 삭제에 실패했습니다.");
        
        } catch(Exception e) {
            
            }
            modelAndView.setViewName("myPage/withdraw");
            return modelAndView;
    }



    //방문 예약 페이지
     @RequestMapping(value = "/myPageVisitReserve", method = RequestMethod.GET)

     public ModelAndView myPageVisit_reserve(@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws Exception {

         PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
         String user_id = principal.getUser_id();
 
         params.put("user_id", user_id);

         //방문 예약 정보
         Object reservation = reservationService.getUserReservation(params);
         modelAndView.addObject("reservation", reservation);

        //딜러 정보
         Object dealerInfo = dealerSalesMgmtService.getDealerName(params);
         modelAndView.addObject("dealerInfo", dealerInfo);

        //판매 완료 차량
         Object soldOutList = dealerSalesMgmtService.getSoldOutCarList(params);
         modelAndView.addObject("soldOutList", soldOutList);

        //판매중 차량
         Object salesList = dealerSalesMgmtService.getOnSaleCarList(params);
         modelAndView.addObject("salesList", salesList);


         modelAndView.setViewName("myPage/myPageVisitReserve");
         return modelAndView;
 
     }

    // 방문 예약 확인(상세페이지)
    @RequestMapping(value = "/visit_reserve", method = RequestMethod.GET)
    
    public ModelAndView visit_reserve(@RequestParam Map<String, Object> params, ModelAndView modelAndView) throws Exception {
                
        PrincipalUser principal = (PrincipalUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String user_id = principal.getUser_id();

        params.put("user_id", user_id);
        Object reservation = reservationService.getUserReservation(params);

        modelAndView.addObject("reservation", reservation);
        modelAndView.setViewName("users_ etc/visit_reserve");
        return modelAndView;

    }

   
}
