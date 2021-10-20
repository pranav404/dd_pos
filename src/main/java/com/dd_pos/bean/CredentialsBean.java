package com.dd_pos.bean;

import javax.validation.constraints.NotNull;

public class CredentialsBean 
{

	private String userID;

	private String Password;

	private String userType;
	private int loginStatus;
	public String getuserID() 
	{
		return userID;
	}
	public void setuserID(String userID) 
	{
		this.userID = userID;
	}
	public String getPassword() 
	{
		return Password;
	}
	public void setPassword(String Password) 
	{
		this.Password = Password;
	}
	public String getuserType() 
	{
		return userType;
	}
	public void setuserType(String userType) 
	{
		this.userType = userType;
	}
	public int getloginStatus() {
		return loginStatus;
	}
	public void setloginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}
	
}
