package com.dd_pos.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.dd_pos.bean.CredentialsBean;
import com.dd_pos.dao.CredentialsDAOClass;

public class verifyLogin {

	public CredentialsDAOClass dao;

	public void setDao(CredentialsDAOClass dao) {
		this.dao = dao;
	}


	public boolean vlog(CredentialsBean c) {
		try {
			CredentialsBean cb = dao.getOrderById(c.getuserID());
			if(cb.getPassword().equals(c.getPassword())) {
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
