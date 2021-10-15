package com.dd_pos.dao;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.dd_pos.bean.FoodBean; 
public class FoodDAOClass {
	
	JdbcTemplate template;    
	    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(FoodBean p){    
	    String sql="insert into POS_TBL_Food(Name,Type,Foodsize,Quantity,Price) values('"+p.getName()+"','"+p.getType()+"','"+p.getFoodsize()+"','"+p.getQuantity()+"','"+p.getPrice()+"')";
	    template.update(sql);
	    sql = "update pos_tbl_Food set Foodid = concat(substring('"+p.getName()+"',1,2),foodid_seq) where Name = '"+p.getName()+"'";
	    return template.update(sql);    
	}     
	 public int delete(String Foodid){    
	    String sql="delete from POS_TBL_Food where id='"+Foodid+"'";    
	    return template.update(sql);    
	}    
	public int update(FoodBean p){    
	    String sql="update POS_TBL_Food set StoreID='"+p.getFoodid()+"',Name='"+p.getName()+"',Type='"+p.getType()+"',Foodsize='"+p.getFoodsize()+"',Quantity='"+p.getQuantity()+"',Price='"+p.getPrice()+"' where Foodid = '"+p.getFoodid()+"'";    
	    return template.update(sql);    
	}
	public FoodBean getOrderById(String Foodid){    
	    String sql="select * from POS_TBL_Food where id=?";    
	    return template.queryForObject(sql, new Object[]{Foodid},new BeanPropertyRowMapper<FoodBean>(FoodBean.class));    
	}    
	public List<FoodBean> getOrder(){    
	    return template.query("select * from POS_TBL_Food",new RowMapper<FoodBean>(){    
	        public FoodBean mapRow(ResultSet rs, int row) throws SQLException {    
	            FoodBean e=new FoodBean();    
	            e.setFoodid(rs.getString(2));    
	            e.setName(rs.getString(3));     
	            e.setType(rs.getString(4));    
	            e.setFoodsize(rs.getString(5));
	            e.setQuantity(rs.getString(6));
	            e.setPrice(rs.getString(7));
	   
	        
	            return e;    
	        }    
	    });    
	}    
	}


 

