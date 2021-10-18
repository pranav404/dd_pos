package com.dd_pos.dao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dd_pos.bean.OrderBean;

public class PaymentDAOClass {
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	public int saveCard(String cardnumber, String from,String to,String bal) {
		String sql = "insert into POS_TBL_CREDITCARD (creditcardnumber,validfrom,validto,balance) values('"+cardnumber+"','"+from+"','"+to+"',"+bal+")";
		return template.update(sql);
	}
	public int updateBalance(String bal,String userid) {
		String sql="update pos_tbl_CREDITCARD set balance='"+bal+"'where userID='"+userid+"'";
		return template.update(sql);
	}
}