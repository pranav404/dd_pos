package com.dd_pos.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.dd_pos.bean.StoreBean;    
    
public class StoreDAOClass 
{    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(StoreBean p){    
    String sql="insert into POS_TBL_PizzaStore(name,street,mobileno,city,state,pincode) values('"+p.getName()+"','"+p.getStreet()+"','"+p.getMobileNo()+"','"+p.getCity()+"','"+p.getState()+"','"+p.getPincode()+"')";
    template.update(sql);
    sql = "update pos_tbl_pizzastore set storeid = concat(substring('"+p.getName()+"',1,2),storeid_seq) where mobileno = '"+p.getMobileNo()+"'";
    return template.update(sql);    
}     
 public int delete(String StoreID){    
    String sql="delete from POS_TBL_PizzaStore where storeid='"+StoreID+"'";    
    return template.update(sql);    
}    
public int update(StoreBean p){    
    String sql="update POS_TBL_PizzaStore set Name='"+p.getName()+"',Street='"+p.getStreet()+"',mobileNo='"+p.getMobileNo()+"',City='"+p.getCity()+"',State='"+p.getState()+"',Pincode='"+p.getPincode()+"' where storeid = '"+p.getStoreID()+"'";    
    return template.update(sql);    
}
public StoreBean getOrderById(String StoreID){    
    String sql="select * from POS_TBL_PizzaStore where storeid=?";    
    return template.queryForObject(sql, new Object[]{StoreID},new BeanPropertyRowMapper<StoreBean>(StoreBean.class));    
}    
public List<StoreBean> getOrder(){    
    return template.query("select * from POS_TBL_PizzaStore",new RowMapper<StoreBean>(){    
        public StoreBean mapRow(ResultSet rs, int row) throws SQLException {    
            StoreBean e=new StoreBean();    
            e.setStoreID(rs.getString(2));    
            e.setName(rs.getString(3)); 
           
            e.setStreet(rs.getString(4));    
            e.setMobileNo(rs.getString(5));
            e.setCity(rs.getString(6));
            e.setState(rs.getString(7));
            e.setPincode(rs.getString(8));
        
            return e;    
        }    
    });    
}    
}
