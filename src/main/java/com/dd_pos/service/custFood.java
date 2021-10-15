package com.dd_pos.service;

import java.util.List;

import com.dd_pos.bean.FoodBean;
import com.dd_pos.util.dbutil;
import com.dd_pos.dao.*;

public class custFood {
	public boolean addFood(FoodBean fb,dbutil db) {
		
		FoodDAOClass fdao = new FoodDAOClass();
		fdao.setTemplate(db.getTemplate());
		int i = fdao.save(fb);
		if(i>0) 
		{
			return true;
		}
		return false;
		
	}
	public List<FoodBean> listFood(dbutil db){
		FoodDAOClass fdao = new FoodDAOClass();
		fdao.setTemplate(db.getTemplate());
		return fdao.getOrder();
	}

}
