package com.dd_pos.service;
import com.dd_pos.dao.PaymentDAOClass;
import com.dd_pos.util.dbutil;

public class creditcard {
	public boolean addCard(String cardnumber,String from,String to,String bal,dbutil db) {
		
		PaymentDAOClass pdao = new PaymentDAOClass();
		pdao.setTemplate(db.getTemplate());
		int i = pdao.saveCard(cardnumber,from,to,bal);
		if(i>0) {
			return true;
		}
		return false;
		
	}
}