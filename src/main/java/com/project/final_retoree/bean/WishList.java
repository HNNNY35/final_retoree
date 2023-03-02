package com.project.final_retoree.bean;

import org.springframework.stereotype.Repository;

@Repository
public class WishList {
    private String wishlist_id;
    private String car_dtl_id;
    private String user_id;

	public String getWishlist_id() {
		return this.wishlist_id;
	}

	public void setWishlist_id(String wishlist_id) {
		this.wishlist_id = wishlist_id;
	}

	public String getCar_dtl_id() {
		return this.car_dtl_id;
	}

	public void setCar_dtl_id(String car_dtl_id) {
		this.car_dtl_id = car_dtl_id;
	}

	public String getUser_id() {
		return this.user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


}
    
