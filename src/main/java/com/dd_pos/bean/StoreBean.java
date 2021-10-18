package com.dd_pos.bean;

import javax.validation.constraints.NotNull;

public class StoreBean {
	@NotNull (message="This is required field ")
	private String storeID,Name,Street,mobileNo,City,State;
	private String Pincode;

	public String getStoreID() {
		return this.storeID;
	}

	public void setStoreID(String storeID) {
		this.storeID = storeID;
	}

	public String getName() {
		return this.Name;
	}

	public void setName(String name) {
		this.Name = name;
	}

	public String getStreet() {
		return this.Street;
	}

	public void setStreet(String street) {
		this.Street = street;
	}

	public String getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getCity() {
		return this.City;
	}

	public void setCity(String city) {
		this.City = city;
	}

	public String getState() {
		return this.State;
	}

	public void setState(String state) {
		this.State = state;
	}

	public String getPincode() {
		return Pincode;
	}

	public void setPincode(String pincode) {
		this.Pincode = pincode;
	}

	
	
}


