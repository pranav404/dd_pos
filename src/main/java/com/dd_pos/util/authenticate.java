package com.dd_pos.util;

//Provides Authentication for the web app

import com.dd_pos.bean.*;
import com.dd_pos.dao.*;
public class authenticate {
	public CredentialsDAOClass dao;

	public void setDao(CredentialsDAOClass dao) {
		this.dao = dao;
	}
	public void authorize(CredentialsBean cb) {
		dao.update(cb);
		
	}
	public boolean vlog(CredentialsBean c) {
		try {
			CredentialsBean cb = dao.getOrderById(c.getuserID());
			if(cb.getPassword().equals(c.getPassword())) {
				cb.setloginStatus(1);
				authorize(cb);
				if(cb.getuserType().equals("admin")) {
					return true;
				}
			}
			
			
			
			return false;
			
		}
		 catch(Exception e){
			 System.out.println(e);
			 return false;
			
		}
		
		
		
	}

}
