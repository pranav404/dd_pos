package com.dd_pos.util;

import com.dd_pos.bean.CredentialsBean;
import com.dd_pos.bean.ProfileBean;
import com.dd_pos.dao.CredentialsDAOClass;
import com.dd_pos.dao.ProfileDAOClass;

public class User {
	public String login(CredentialsBean c,dbutil db) {
		CredentialsDAOClass dao = new CredentialsDAOClass();
		dao.setTemplate(db.getTemplate());
		try {
			CredentialsBean cb = dao.getOrderById(c.getuserID());
			if(cb.getPassword().equals(c.getPassword())) {
				cb.setloginStatus(1);
				
				if(cb.getuserType().equals("admin")) {
					return "A";
				}
				else {
					return "C";
				}
			}
			
			
			
			return "INVALID";
			
		}
		 catch(Exception e){
			 System.out.println(e);
			 return "INVALID";
			
		}
	}
	public String changePassword(String username,String password,dbutil db) {
		CredentialsBean c = new CredentialsBean();
		c.setuserID(username);
		c.setPassword(password);
		CredentialsDAOClass dao = new CredentialsDAOClass();
		dao.setTemplate(db.getTemplate());
		int i = dao.update(c);
		if(i>0) {
			return "SUCESS";
		}
		else {
			return "FAIL";
		}
	}
	public String register(ProfileBean p,dbutil db) {
		CredentialsBean cb = new CredentialsBean();
		cb.setPassword(p.getPassword());
		cb.setuserID(p.getfirstName());
		CredentialsDAOClass dao = new CredentialsDAOClass();
		dao.setTemplate(db.getTemplate());
		dao.saveProfile(p.getPassword(),p.getfirstName());
		ProfileDAOClass pdao = new ProfileDAOClass();
		pdao.setTemplate(db.getTemplate());
		pdao.save(p);
		return "SUCESS";
	}

}
