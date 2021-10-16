package com.dd_pos.service;

import java.sql.Date;
import java.util.List;

import com.dd_pos.bean.*;
import com.dd_pos.dao.*;
import com.dd_pos.util.*;
public class cart {
	
	public boolean addCart(String userid,String fooddet,int quantity,Date orderdate,dbutil db) {
		try {
			System.out.println(userid+fooddet);
			String fooddetails[] = fooddet.split("\\+");
			CartDAOClass cdao = new CartDAOClass();
			cdao.setTemplate(db.getTemplate());
			CartBean cb = new CartBean();
			cb.setUserID(userid);
			cb.setFoodID(fooddetails[0]);
			cb.setType(fooddetails[2]);
			double price  = (double)(quantity*Double.parseDouble(fooddetails[3]));
			cb.setCost(price);
			cb.setQuantity(quantity);
			cb.setOrderDate(orderdate);
			cdao.save(cb);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	public boolean modifycartdetails(CartBean cb,dbutil db) {
		try {
			CartDAOClass sdao = new CartDAOClass();
			sdao.setTemplate(db.getTemplate());
			sdao.update(cb);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public List<CartBean> listcartitems(dbutil db){
		CartDAOClass cdao = new CartDAOClass();
		cdao.setTemplate(db.getTemplate());
		return cdao.getCart();
	}
	public boolean updatecart(CartBean cb, dbutil db) {
		// TODO Auto-generated method stub
		try {
		CartDAOClass cdao = new CartDAOClass();
		cdao.setTemplate(db.getTemplate());
		cdao.update(cb);
		return true;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean detelecart(String cartID, dbutil db) {
		// TODO Auto-generated method stub
		try {
			CartDAOClass cdao = new CartDAOClass();
			cdao.setTemplate(db.getTemplate());
			cdao.delete(cartID);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


}
