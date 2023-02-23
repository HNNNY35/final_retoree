package com.project.final_retoree.bean;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class CarInfo {

    private String car_id;
    private String origin;
    private String munufacturer;
    private String model;
    private String detailed_model;
    private String veh_num;
    private int price;
    private String model_year;
    private String fuel;
    private String addr_city;
    private String transmission;
    private String cargrade;
    private String detailed_cargrade;
    private int driven_dist;

    private String accident_info;
    private String options;
    private String color;
    private String dtl_img_car;
    private String sale_status;
    private String paner_id;
    private String skeleton_id;

    public String getCar_id() {
        return this.car_id;
    }

    public void setCar_id(String car_id) {
        this.car_id = car_id;
    }

    public String getOrigin() {
        return this.origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getMunufacturer() {
        return this.munufacturer;
    }

    public void setMunufacturer(String munufacturer) {
        this.munufacturer = munufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDetailed_model() {
        return this.detailed_model;
    }

    public void setDetailed_model(String detailed_model) {
        this.detailed_model = detailed_model;
    }

    public String getVeh_num() {
        return this.veh_num;
    }

    public void setVeh_num(String veh_num) {
        this.veh_num = veh_num;
    }

    public int getPrice() {
        return this.price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getModel_year() {
        return this.model_year;
    }

    public void setModel_year(String model_year) {
        this.model_year = model_year;
    }

    public String getFuel() {
        return this.fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getAddr_city() {
        return this.addr_city;
    }

    public void setAddr_city(String addr_city) {
        this.addr_city = addr_city;
    }

    public String getTransmission() {
        return this.transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getCargrade() {
        return this.cargrade;
    }

    public void setCargrade(String cargrade) {
        this.cargrade = cargrade;
    }

    public String getDetailed_cargrade() {
        return this.detailed_cargrade;
    }

    public void setDetailed_cargrade(String detailed_cargrade) {
        this.detailed_cargrade = detailed_cargrade;
    }

    public int getDriven_dist() {
        return this.driven_dist;
    }

    public void setDriven_dist(int driven_dist) {
        this.driven_dist = driven_dist;
    }

    public String getAccident_info() {
        return this.accident_info;
    }

    public void setAccident_info(String accident_info) {
        this.accident_info = accident_info;
    }

    public String getOptions() {
        return this.options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDtl_img_car() {
        return this.dtl_img_car;
    }

    public void setDtl_img_car(String dtl_img_car) {
        this.dtl_img_car = dtl_img_car;
    }

    public String getSale_status() {
        return this.sale_status;
    }

    public void setSale_status(String sale_status) {
        this.sale_status = sale_status;
    }

    public String getPaner_id() {
        return this.paner_id;
    }

    public void setPaner_id(String paner_id) {
        this.paner_id = paner_id;
    }

    public String getSkeleton_id() {
        return this.skeleton_id;
    }

    public void setSkeleton_id(String skeleton_id) {
        this.skeleton_id = skeleton_id;
    }

}
