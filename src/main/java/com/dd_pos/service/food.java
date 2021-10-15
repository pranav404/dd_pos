package com.dd_pos.service;

import java.util.ArrayList;
import java.util.List;

import com.dd_pos.bean.*;
import com.dd_pos.util.dbutil;
import com.dd_pos.dao.*;
public class food {

		public boolean addFood(FoodBean sb,dbutil db) {
			
			FoodDAOClass sdao = new FoodDAOClass();
			sdao.setTemplate(db.getTemplate());
			int i = sdao.save(sb);
			if(i>0) {
				return true;
			}
			return false;
			
		}
		public List<FoodBean> listFood(dbutil db){
			FoodDAOClass sdao = new FoodDAOClass();
			sdao.setTemplate(db.getTemplate());
			return sdao.getOrder();
		}
		public boolean editfood(FoodBean sb,dbutil db) {
			try {
				FoodDAOClass sdao = new FoodDAOClass();
				sdao.setTemplate(db.getTemplate());
				sdao.update(sb);
				return true;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		public boolean deletefood(String Foodid,dbutil db) {
			try {
				FoodDAOClass sdao = new FoodDAOClass();
				sdao.setTemplate(db.getTemplate());
				sdao.delete(Foodid);
				return true;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}


	}

