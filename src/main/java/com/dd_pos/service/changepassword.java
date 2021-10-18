package com.pizza.service;


import java.util.ArrayList;
import java.util.List;

import com.pizza.bean.CredentialsBean;
import com.pizza.dao.*;
import com.pizza.util.dbutil;
public class changepassword {

		public boolean changepass(CredentialsBean sb,dbutil db) {
			
			CredentialsDAOClass sdao = new CredentialsDAOClass();
			sdao.setTemplate(db.getTemplate());
			int i = sdao.changepass(sb);
			if(i>0) {
				return true;
			}
			return false;
			
		}

}
