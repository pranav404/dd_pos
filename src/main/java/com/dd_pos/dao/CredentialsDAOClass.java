package com.dd_pos.dao;
    
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.dd_pos.bean.CredentialsBean;   
    
public class CredentialsDAOClass 
{    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}
public int saveProfile(String password, String Firstname) {
	String sql = "insert into POS_TBL_USER_CREDENTIALS (password,usertype,loginstatus) values('"+password+"','customer',1)";
	template.update(sql);
	sql = "update pos_tbl_user_credentials set userid = concat(substring('"+Firstname+"',1,2),userid_seq) where password = '"+password+"'";
	return template.update(sql);
}
public int save(CredentialsBean p){    
    String sql="insert into POS_TBL_USER_CREDENTIALS values('"+p.getuserID()+"','"+p.getPassword()+"','"+p.getuserType()+"',"+p.getloginStatus()+")";
    return template.update(sql);    
}  
public int delete(int UserID){    
    String sql="delete from POS_TBL_User_Credentials where id="+UserID+"";    
    return template.update(sql);    
}    
public int update(CredentialsBean p){    
    String sql="update POS_TBL_User_Credentials set UserID='"+p.getuserID()+"',Password='"+p.getPassword()+"' where UserID = '"+p.getuserID()+"'";    
    return template.update(sql);    
}
public int changepass(CredentialsBean p) {
    String sql="update POS_TBL_User_Credentials set Password="+p.getPassword()+" where UserID = "+p.getuserID()+"";    
    return template.update(sql); 
}
public CredentialsBean getOrderById(String UserID){    
    String sql="select * from POS_TBL_User_Credentials where UserId=?";    
    return template.queryForObject(sql, new Object[]{UserID},new BeanPropertyRowMapper<CredentialsBean>(CredentialsBean.class));    
}    
public List<CredentialsBean> getOrder(){    
    return template.query("select * from POS_TBL_User_Credentials",new RowMapper<CredentialsBean>(){    
        public CredentialsBean mapRow(ResultSet rs, int row) throws SQLException {    
            CredentialsBean e=new CredentialsBean();    
            e.setuserID(rs.getString(1));    
            e.setPassword(rs.getString(2));    
            e.setuserType(rs.getString(3));    
            e.setloginStatus(rs.getInt(4));
           
        
            return e;    
        }    
    });    
}    
}
