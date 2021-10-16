package com.dd_pos.dao; 

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dd_pos.bean.CartBean;

public class CartDAOClass {    
JdbcTemplate template;    

public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(CartBean p){    
    String sql="insert into pos_tbl_cart(userid,foodID,Type,Quantity,Cost,orderDate) values('"+p.getUserID()+"','"+p.getFoodID()+"','"+p.getType()+"','"+p.getQuantity()+"','"+p.getCost()+"','"+p.getOrderDate()+"')";    
    template.update(sql);
	sql = "update pos_tbl_cart set cartid = concat(substring('"+p.getFoodID()+"',1,2),cartid_seq) where foodid = '"+p.getFoodID()+"'";
    return template.update(sql);    
}    
public int update(CartBean p){    
    String sql="update pos_tbl_cart set CartID="+p.getCartID()+",UserID="+p.getUserID()+",FoodID="+p.getFoodID()+",CartID="+p.getCartID()+",Quantity="+p.getQuantity()+",Cost="+p.getCost()+",OrderDate="+p.getOrderDate()+" where UserId="+p.getUserID()+"";    
    return template.update(sql);    
}
public int delete(int CartID){    
    String sql="delete from pos_tbl_cart  where id="+CartID+"";    
    return template.update(sql);    
}    
public CartBean getCartById(int CartID){    
    String sql="select * from pos_tbl_cart where CartID=?";    
    return template.queryForObject(sql, new Object[]{CartID},new BeanPropertyRowMapper<CartBean>(CartBean.class));    
}    
public List<CartBean> getCart(){    
    return template.query("select * from pos_tbl_cart ",new RowMapper<CartBean>(){    
        public CartBean mapRow(ResultSet rs, int row) throws SQLException {    
	CartBean e=new CartBean();    
            e.setCartID(rs.getString(2));    
            e.setUserID(rs.getString(3));    
            e.setFoodID(rs.getString(4));    
            e.setType(rs.getString(5));   
            e.setQuantity(rs.getInt(6));    
            e.setCost(rs.getDouble(7)); 
            e.setOrderDate(rs.getDate(8));    
            return e;    
        }    
    });    
}    
}   
