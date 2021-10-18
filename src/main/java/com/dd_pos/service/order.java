package com.dd_pos.service;

import java.util.List;

import com.dd_pos.bean.OrderBean;
import com.dd_pos.dao.OrderDAOClass;
import com.dd_pos.util.dbutil;

public class order {
	public boolean changeorderstat(String orderid,String status,dbutil db){
		try {
			OrderDAOClass odao = new OrderDAOClass();
			odao.setTemplate(db.getTemplate());
			OrderBean ob = new OrderBean();
			ob.setOrderid(orderid);
			ob.setOrderstatus(status);
			odao.update(ob);
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<OrderBean> listorders(dbutil db){
		OrderDAOClass odao = new OrderDAOClass();
		odao.setTemplate(db.getTemplate());
		return odao.getOrderAdmin();
	}

}
