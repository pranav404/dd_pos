package com.dd_pos.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;

public class OrderBean {
<<<<<<< HEAD
	
=======

>>>>>>> 1b7fe8ee82d8dfcd456e8aa85617e393c0e89c56
	private String orderid;
	private String userid;
	@NotNull (message="This is required field ")
	private String orderdate;
	private String storeid;
	private String cartid;
	private String orderstatus;
	@NotNull (message="This is required field ")
	private String street;
	@NotNull (message="This is required field ")
	private String city;
	@NotNull (message="This is required field ")
	private String state;
	private String pincode;
	@NotNull (message="This is required field ")
	private String mobileno;

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getCartid() {
		return cartid;
	}

	public void setCartid(String cartid) {
		this.cartid = cartid;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getStoreid() {
		return storeid;
	}

	public void setStoreid(String storeid) {
		this.storeid = storeid;
	}
	

}
