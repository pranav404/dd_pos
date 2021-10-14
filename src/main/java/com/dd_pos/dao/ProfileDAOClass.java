package com.dd_pos.dao;    
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.dd_pos.bean.ProfileBean;    
    
public class ProfileDAOClass {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(ProfileBean p){    
    String sql="insert into POS_TBL_User_Profile (password,firstName,lastName,dateofbirth,gender,street,location,city,state,pincode,mobileno,emailid) values('"+p.getPassword()+"','"+p.getfirstName()+"','"+p.getlastName()+"','"+p.getdateOfBirth()+"','"+p.getGender()+"','"+p.getStreet()+"','"+p.getLocation()+"','"+p.getCity()+"','"+p.getState()+"','"+p.getPincode()+"','"+p.getmobileNo()+"','"+p.getemailID()+"')";
    template.update(sql);
    sql = "update pos_tbl_user_profile set userid = concat(substring(firstname,1,2),userid_seq) where emailid = '"+p.getemailID()+"'";
    return template.update(sql);    
}  
public int update(ProfileBean p){    
    String sql="update POS_TBL_User_Profile set FirstName="+p.getfirstName()+",LastName="+p.getlastName()+",Gender="+p.getGender()+",Street="+p.getStreet()+",Location="+p.getLocation()+",City="+p.getCity()+",State="+p.getState()+",Pincode="+p.getPincode()+",MobileNo="+p.getmobileNo()+",EmailID="+p.getemailID()+",Password="+p.getPassword()+",DateOfBirth="+p.getdateOfBirth()+" where UserId="+p.getuserID()+"";    
    return template.update(sql);    
}
public int delete(int UserID){    
    String sql="delete from POS_TBL_User_Profile where UserId="+UserID+"";    
    return template.update(sql);    
}    
public ProfileBean getProfileByUserId(int UserID){    
    String sql="select * from POS_TBL_User_Profile where UserId=?";    
    return template.queryForObject(sql, new Object[]{UserID},new BeanPropertyRowMapper<ProfileBean>(ProfileBean.class));    
}    
public List<ProfileBean> getOrder(){    
    return template.query("select * from POS_TBL_User_Profile",new RowMapper<ProfileBean>(){    
        public ProfileBean mapRow(ResultSet rs, int row) throws SQLException {    
            ProfileBean e=new ProfileBean();    
            e.setuserID(rs.getString(1));    
            e.setfirstName(rs.getString(2));    
            e.setlastName(rs.getString(3));    
            e.setGender(rs.getString(4));
            e.setStreet(rs.getString(5));
            e.setLocation(rs.getString(6));
            e.setCity(rs.getString(7));
            e.setState(rs.getString(8));
            e.setPincode(rs.getString(9));
            e.setmobileNo(rs.getString(10));
            e.setemailID(rs.getString(11));
            e.setPassword(rs.getString(12));
            return e;    
        }    
    });    
}    
}