// package com.project.final_retoree.controller;

// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.servlet.ModelAndView;

// @Controller
// public class Car_detailController {

//     @RequestMapping(value = "/car_detail_change")
//     public ModelAndView car_detail(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_change");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_reg")
//     public ModelAndView car_reg(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_reg");
//         return modelAndView;

//     }

//     // mainsearch
//     @RequestMapping(value = "/car_detail_audi_a5")
//     public ModelAndView car_detail_audi_a5(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_audi_a5");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_avante_n_turbo")
//     public ModelAndView car_detail_avante_n_turbo(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_avante_n_turbo");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_benz_e_class_w213")
//     public ModelAndView car_detail_benz_e_class_w213(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_benz_e_class_w213");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_bmw_420i")
//     public ModelAndView car_detail_bmw_420i(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_bmw_420i");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_bmw_x6")
//     public ModelAndView car_detail_bmw_x6(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_bmw_x6");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_casper")
//     public ModelAndView car_detail_casper(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_casper");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_grandeur_hg240")
//     public ModelAndView car_detail_grandeur_hg240(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_grandeur_hg240");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_k5_turbo")
//     public ModelAndView car_detail_k5_turbo(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_k5_turbo");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_kia_the_new_Ray")
//     public ModelAndView car_detail_kia_the_new_Ray(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_kia_the_new_Ray");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_mojave_the_master")
//     public ModelAndView car_detail_mojave_the_master(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_mojave_the_master");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_tucson_4")
//     public ModelAndView car_detail_tucson_4(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_tucson_4");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_veloster")
//     public ModelAndView car_detail_veloster(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_veloster");
//         return modelAndView;

//     }

//     // search

//     @RequestMapping(value = "/car_detail_accent_modern")
//     public ModelAndView car_detail_accent_modern(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_accent_modern");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_avante_ad_gdi")
//     public ModelAndView car_detail_avante_ad_gdi(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_avante_ad_gdi");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_avante_modern_smartstream")
//     public ModelAndView car_detail_avante_modern_smartstream(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_avante_modern_smartstream");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_casper_gasoline_inspiration")
//     public ModelAndView car_detail_casper_gasoline_inspiration(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_casper_gasoline_inspiration");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_grandeur_ig_premium")
//     public ModelAndView car_detail_grandeur_ig_premium(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_grandeur_ig_premium");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_kona_modern_pop")
//     public ModelAndView car_detail_kona_modern_pop(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_kona_modern_pop");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_the_new_avante_ad")
//     public ModelAndView car_detail_the_new_avante_ad(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_the_new_avante_ad");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_the_new_veloster_pyl")
//     public ModelAndView car_detail_the_new_veloster_pyl(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_the_new_veloster_pyl");
//         return modelAndView;

//     }

//     @RequestMapping(value = "/car_detail_veloster_n_performance")
//     public ModelAndView car_detail_veloster_n_performance(ModelAndView modelAndView) {
//         modelAndView.setViewName("car/car_detail_page/car_detail_veloster_n_performance");
//         return modelAndView;

//     }

// }
