package com.dd_pos.service;

import java.util.ArrayList;
import java.util.List;

import com.dd_pos.bean.StoreBean;
import com.dd_pos.util.dbutil;
import com.dd_pos.dao.*;

public class store {
	public boolean addStore(StoreBean sb,dbutil db) {
		
		StoreDAOClass sdao = new StoreDAOClass();
		sdao.setTemplate(db.getTemplate());
		int i = sdao.save(sb);
		if(i>0) {
			return true;
		}
		return false;
		
	}
	public List<StoreBean> listStore(dbutil db){
		StoreDAOClass sdao = new StoreDAOClass();
		sdao.setTemplate(db.getTemplate());
		return sdao.getOrder();
	}
	
	public boolean editstore(StoreBean sb,dbutil db) {
		try {
			StoreDAOClass sdao = new StoreDAOClass();
			sdao.setTemplate(db.getTemplate());
			sdao.update(sb);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean deletestore(String storeID,dbutil db) {
		try {
			StoreDAOClass sdao = new StoreDAOClass();
			sdao.setTemplate(db.getTemplate());
			sdao.delete(storeID);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
