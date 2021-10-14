package com.dd_pos.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import com.dd_pos.bean.CredentialsBean;
import com.dd_pos.bean.ProfileBean;
import com.dd_pos.dao.CredentialsDAOClass;
import com.dd_pos.util.*;

@Controller
public class controller {
	@Autowired
	dbutil db;

	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest req) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		CredentialsBean cb = new CredentialsBean();
		cb.setuserID(username);
		cb.setPassword(password);
		User v = new User();
		String retValue =  v.login(cb, db);
		if(retValue.equals("A")) {
			return "Admin";
		}
		else
			if(retValue.equals("C")) {
				return "Customer";
			}
		else {
			return "index";
		}
	}
	
	@RequestMapping("/Contactus")
	public String contactus() {
		return "Contactus";
	}
	
	@RequestMapping("/Aboutus")
	public String aboutus() {
		return "Aboutus";
	}
	
	//New User Signup
	@RequestMapping("/NewUserSignup")
	public String signup() {
		return "NewUserSignup";
	}
	
	//Getting Details From the New User
	@RequestMapping("/save")
	public String savedetails(HttpServletRequest req) {
		String fname,lname,gender,street,loc,city,state,mail,pss;
		Date dob;
		String pin,mob;
		fname = req.getParameter("Firstname");
		lname = req.getParameter("Lastname");
		gender = req.getParameter("gender");
		street = req.getParameter("street");
		loc = req.getParameter("location");
		city = req.getParameter("city");
		state = req.getParameter("state");
		mail = req.getParameter("mail");
		pss = req.getParameter("password");
		dob = Date.valueOf(req.getParameter("dob"));
		pin = (req.getParameter("pin"));
		mob = (req.getParameter("mob"));
		ProfileBean p = new ProfileBean();
		p.setfirstName(fname);
		p.setlastName(lname);
		p.setGender(gender);
		p.setStreet(street);
		p.setLocation(loc);
		p.setCity(city);
		p.setState(state);
		p.setPincode(pin);
		p.setmobileNo(mob);
		p.setemailID(mail);
		p.setPassword(pss);
		p.setdateOfBirth(dob);
		User user = new User();
		String retValue = user.register(p,db);
		if(retValue.equals("SUCESS")) {
			return "Customer";
		}
		else {
			return "index";
		}
		
	}
	

}
