package com.dd_pos.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dd_pos.bean.OrderBean;
public class OrderDAOClass {
	JdbcTemplate template;    

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(OrderBean p){    
	    String sql="insert into pos_tbl_order(userid,orderdate,storeid,cartid,orderstatus,street,city,state,pincode,mobileno) values('"+p.getUserid()+"','"+p.getOrderdate()+"','"+p.getStoreid()+"','"+p.getCartid()+"','"+"Ordered"+"','"+p.getStreet()+"','"+p.getCity()+"','"+p.getState()+"','"+p.getPincode()+"','"+p.getMobileno()+"')";    
	    template.update(sql);
		sql = "update pos_tbl_order set orderid = concat(substring('"+p.getUserid()+"',1,2),orderid_seq) where userid = '"+p.getUserid()+"'";
	    return template.update(sql);    
	}    
	public int update(OrderBean p){    
	    String sql="update pos_tbl_order set orderstatus='"+p.getOrderstatus()+"' where orderid='"+p.getOrderid()+"'";    
	    return template.update(sql);    
	}
	public int delete(String orderid){    
	    String sql="delete from pos_tbl_order  where orderid='"+orderid+"'";    
	    return template.update(sql);    
	}    
	public OrderBean getOrderById(String orderid){    
	    String sql="select * from pos_tbl_order where orderid=?";    
	    return template.queryForObject(sql, new Object[]{orderid},new BeanPropertyRowMapper<OrderBean>(OrderBean.class));    
	}    
	public List<OrderBean> getOrdercust(String userid){    
	    return template.query("select * from pos_tbl_order where userid = '"+userid+"'",new RowMapper<OrderBean>(){    
	        public OrderBean mapRow(ResultSet rs, int row) throws SQLException {    
		OrderBean e=new OrderBean();    
	            e.setOrderid(rs.getString(12));    
	               
	            e.setOrderdate(rs.getString(3));    
	            e.setStoreid(rs.getString(4));   
	            e.setCartid(rs.getString(5));    
	            e.setOrderstatus(rs.getString(6)); 
	            e.setStreet(rs.getString(7));
	            e.setCity(rs.getString(8));
	            e.setState(rs.getString(9));
	            e.setPincode(rs.getString(10));
	            e.setMobileno(rs.getString(11));
	            return e;    
	        }    
	    });    
	}
	public List<OrderBean> getOrderAdmin(){    
	    return template.query("select * from pos_tbl_order",new RowMapper<OrderBean>(){    
	        public OrderBean mapRow(ResultSet rs, int row) throws SQLException {    
		OrderBean e=new OrderBean();    
		e.setOrderid(rs.getString(12));    
        
        e.setOrderdate(rs.getString(3));    
        e.setStoreid(rs.getString(4));   
        e.setCartid(rs.getString(5));    
        e.setOrderstatus(rs.getString(6)); 
        e.setStreet(rs.getString(7));
        e.setCity(rs.getString(8));
        e.setState(rs.getString(9));
        e.setPincode(rs.getString(10));
        e.setMobileno(rs.getString(11));
        return e;    
	        }    
	    });    
	}

}
