package com.dd_pos.service;

import java.sql.Date;
import java.util.ArrayList;
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
	public List<CartBean> listcartitems(String userid,dbutil db){
		CartDAOClass cdao = new CartDAOClass();
		cdao.setTemplate(db.getTemplate());
		return cdao.getCart(userid);
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
	
	public double orderCart(String userid,OrderBean ob,dbutil db) {
		try {
		
		ArrayList<CartBean> cartlist = (ArrayList<CartBean>) listcartitems(userid,db);
		OrderDAOClass odao = new OrderDAOClass();
		odao.setTemplate(db.getTemplate());
		store s = new store();
		ArrayList<StoreBean> storelist = (ArrayList<StoreBean>)s.listStore(db);
		double total = 0.0;
		ob.setStoreid("On1000");
		for(StoreBean sb:storelist) {
			if(sb.getPincode().equals(ob.getPincode())) {
				ob.setStoreid(sb.getStoreID());
				break;
			}
		}
		for(CartBean cb :cartlist) {
			ob.setCartid(cb.getCartID());
			odao.save(ob);
			detelecart(cb.getCartID(),db);
			total += cb.getCost();
		}
		return total;
		}
		catch(Exception e) {
			e.printStackTrace();
			return -10000000.2;
		}
		
	}


}
