package com.dd_pos.service;


import java.util.ArrayList;
import java.util.List;

import com.dd_pos.dao.CredentialsDAOClass;
import com.dd_pos.bean.CredentialsBean;
import com.dd_pos.dao.*;
import com.dd_pos.util.dbutil;
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
