package com.dd_pos.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.dd_pos.bean.CredentialsBean;
import com.dd_pos.bean.FoodBean;
import com.dd_pos.bean.ProfileBean;
import com.dd_pos.bean.StoreBean;
import com.dd_pos.dao.CredentialsDAOClass;
import com.dd_pos.service.food;
import com.dd_pos.service.store;

import com.dd_pos.bean.*;
import com.dd_pos.dao.*;
import com.dd_pos.service.*;

import com.dd_pos.util.*;


@SessionAttributes("User")
@Controller
public class controller {
	@Autowired
	dbutil db;

	
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		CredentialsBean cb = new CredentialsBean();
		cb.setuserID(username);
		cb.setPassword(password);
		User v = new User();
		String retValue =  v.login(cb, db);
		if(retValue.equals("A")) {
			cb.setuserType("admin");
			ModelAndView mv = new ModelAndView();
			mv.addObject("User", cb);
			mv.setViewName("Admin");
			return mv;
		}
		else
			if(retValue.equals("C")) {
				cb.setuserType("customer");
				ModelAndView mv = new ModelAndView();
				mv.addObject("User", cb);
				mv.setViewName("Customer");
				return mv;			}
		else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("index");
			return mv;
		}
	}
	
	@RequestMapping("/Contactus")
	public String contactus() {
		return "Contactus";
	}
	
	@RequestMapping("/Admin")
	public String home() {
		return "Admin";
		
	}
	@RequestMapping("/Customer")
	public String home1() {
		return "Customer";
		
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
	
	//Logout
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "index";
	}
	@RequestMapping("/index")
	public String index(SessionStatus status) {
		status.setComplete();
		return "index";
	}
	
	//Getting Details From the New User
	@RequestMapping("/save")
	public ModelAndView savedetails(HttpServletRequest req) {
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
			CredentialsBean cb = new CredentialsBean();
			
			cb.setuserType("customer");
			ModelAndView mv = new ModelAndView();
			mv.addObject("User", cb);
			mv.setViewName("Customer");
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("index");
			return mv;
		}
		
	}
	
		//change password
	@RequestMapping("/Forgotpassword")
	public String changepass(Model model,@PathVariable String userID) {
			CredentialsBean sb = new CredentialsBean();
			sb.setuserID(userID);
			model.addAttribute("changepass", sb);
		return "index";
	}
	
	//Admin Part-----------------------------------------------------------------------------------------------------------------
	
	//Adding or deleting pizza details
	@RequestMapping("/Adddelpizza")
	public String adddelpizza(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		store storeservice = new store();
		List<StoreBean> storeList = storeservice.listStore(db);
		model.addAttribute("list", storeList);
		return "Adddelpizza";
	}
	
	//Pizza form
	@RequestMapping("/pizzaform")
	public String pizzaform(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		StoreBean sb = new StoreBean();
		model.addAttribute("storebean", sb);
		return "pizzaform";
	}
	
	//Add pizza Store
	@RequestMapping("/addpizzastore")
	public String addpizzastore(@ModelAttribute("storebean") StoreBean sb,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		store storeservice = new store();
		storeservice.addStore(sb, db);
		return "redirect:Adddelpizza";
	}
	//viewmodifypizza
	@RequestMapping("/viewmodpizza")
	public String viewmodifypizza(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		store storeservice = new store();
		List<StoreBean> storeList = storeservice.listStore(db);
		model.addAttribute("list", storeList);
		return "viewmodpizza";
	}
	
	//editPpizza
	@RequestMapping(value="/editpizza/{storeID}")
	public String editStore(Model model,@PathVariable String storeID) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		StoreBean sb = new StoreBean();
		sb.setStoreID(storeID);
		model.addAttribute("editStore", sb);
		return "editpizza";
	}
	
	//save edited store
	@RequestMapping("/saveeditpizza")
	public String saveedit(@ModelAttribute("editStore") StoreBean sb,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		store storeservice = new store();
		storeservice.editstore(sb, db);
		return "redirect:viewmodpizza";
	}
	//delete pizza store
	@RequestMapping("/deletepizza/{storeID}")
	public String deletepizza(@PathVariable String storeID,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		store storeservices = new store();
		storeservices.deletestore(storeID, db);
		return "redirect:Adddelpizza";
	}
	//Adding or deleting food details
	@RequestMapping("/Adddelfood")
	public String adddelfood(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		food foodservice = new food();
		List<FoodBean> foodList = foodservice.listFood(db);
		model.addAttribute("list", foodList);
		return "Adddelfood";
	}
	//food form
	@RequestMapping("/foodform")
	public String foodform(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		FoodBean fb = new FoodBean();
		model.addAttribute("foodbean", fb);
		return "foodform";
	}
	//Add food
	@RequestMapping("/addfooditem")
	public String addfooddet(@ModelAttribute("foodbean") FoodBean fb,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		food foodservice = new food();
		foodservice.addFood(fb, db);
		return "redirect:Adddelfood";
	}
	//viewmodifyfood
	@RequestMapping("/viewmodfood")
	public String viewmodifyfood(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		food foodservice = new food();
		List<FoodBean> foodList = foodservice.listFood(db);
		model.addAttribute("list", foodList);
		return "viewmodfood";
	}
	//editfood
	@RequestMapping(value="/editfood/{Foodid}")
	public String editfood(Model model,@PathVariable String Foodid) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		FoodBean sb = new FoodBean();
		sb.setFoodid(Foodid);
		model.addAttribute("editfood", sb);
		return "editfood";
	}
	
	//save edited food
	@RequestMapping("/saveeditfood")
	public String saveedit(@ModelAttribute("editfood") FoodBean sb,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		food foodservice = new food();
		foodservice.editfood(sb, db);
		return "redirect:viewmodfood";
	}
	//delete food
	@RequestMapping("/deletefood/{Foodid}")
	public String deletefood(@PathVariable String Foodid,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		food foodservices = new food();
		foodservices.deletefood(Foodid, db);
		return "redirect:/Adddelfood";
	}
	
	@RequestMapping("/orderstatus")
	public String ordersview(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		order od = new order();
		List<OrderBean> orderlist = od.listorders(db);
		model.addAttribute("list", orderlist);
		return "orderstatus";
	}
	
	@RequestMapping("/changestatus/{orderid}")
	public String changeorderstatus(@PathVariable String orderid,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("admin")) {
				return "index";
			}
		}
		model.addAttribute("orderid", orderid);
		return "changestat";
		
		
	}
	
	@RequestMapping("/statchanged")
	public String statchanged(HttpServletRequest req,Model model) {
		OrderBean ob = new OrderBean();
		String orderid = req.getParameter("orderid");
		String status = req.getParameter("status");
		order od = new order();
		od.changeorderstat(orderid, status, db);
		return "redirect:/orderstatus";
	}
	
	
	
	
	//Customer part--------------------------------------------------------------------------------------------------------------
	//add fooditems to cart
	@RequestMapping("/CustAddfood")
	public String customerAddFood(Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		
		custFood f = new custFood();
		List<FoodBean> foodlist = f.listFood(db);
		model.addAttribute("list", foodlist);
		return "CustAddFood";
	}
	
	
	//save selected food item to db
	@RequestMapping("/saveaddeditem")
	public String savefooddb(HttpServletRequest req,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		String fooddet = req.getParameter("Type");
		String userid = cb.getuserID();
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		Date orderdate = Date.valueOf(req.getParameter("orderdate"));
		cart cartservices = new cart();
		cartservices.addCart(userid,fooddet, quantity, orderdate, db);
		return "redirect:/viewcartitems";
	}
	//edit cart items
	@RequestMapping(value="/editCart/{CartID}")
	public String modifycartdetails(Model model,@PathVariable String CartID) {
		CredentialsBean crb = (CredentialsBean) model.getAttribute("User");
		if(crb==null) {
			return "index";
		}
		else {
			if(!crb.getuserType().equals("customer")) {
				return "index";
			}
		}
		CartBean cb = new CartBean();
		System.out.println("inside cb");
		cb.setCartID(CartID);
		model.addAttribute("modifycartdetails", cb);
		custFood f = new custFood();
		List<FoodBean> foodlist = f.listFood(db);
		model.addAttribute("list", foodlist);
		return "modifycartdetails";
	}
	//save modified cart details
	@RequestMapping("/modifycart")
	public String modifycart(@ModelAttribute("modifycartdetails") CartBean cb,HttpServletRequest req,Model model) {
		CredentialsBean crb = (CredentialsBean) model.getAttribute("User");
		if(crb==null) {
			return "index";
		}
		else {
			if(!crb.getuserType().equals("customer")) {
				return "index";
			}
		}
		Date orderdate = Date.valueOf(req.getParameter("orderdate"));
		String details[] = cb.getFoodID().split("\\+");
		System.out.println(details.length);
		cb.setFoodID(details[0]);
		cb.setType(details[2]);
		double cost = (double)(cb.getQuantity())*Double.parseDouble(details[3]);
		cb.setCost(cost);
		cb.setOrderDate(orderdate);
		cart cartservices  = new cart();
		if(cartservices.updatecart(cb,db))
			return"redirect:/viewcartitems";
		return "";
	}
	//view fooditems in cart
	@RequestMapping("/viewcartitems")
	public String ViewCartItems(Model model) 
	{
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		cart f = new cart();
		List<CartBean> foodlist =f.listcartitems(cb.getuserID(),db);
		model.addAttribute("list", foodlist);
		return "ViewCartItems";
	}
	
	
	//delete cart items
	@RequestMapping(value = "/deleteCart/{cartID}")
	public String deletecart(@PathVariable String cartID,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		cart cartservices = new cart();
		if(cartservices.detelecart(cartID,db)) {
			return"redirect:/viewcartitems";
		}
		return"";
	}
	
	//Confirm Order
	@RequestMapping("/confirmOrder")
	public String confirmOrder() {
		
		return "ShippingAddress";
	}
	
	@RequestMapping("ordership")
	public String confirmorderwithaddress(HttpServletRequest req,Model model) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		String Street = req.getParameter("street");
		String City = req.getParameter("city");
		String state = req.getParameter("state");
		String pincode = req.getParameter("pincode");
		String mobileno = req.getParameter("mobileno");
		String orderdate = req.getParameter("orderdate");
		OrderBean ob = new OrderBean();
		ob.setStreet(Street);
		ob.setCity(City);
		ob.setState(state);
		ob.setPincode(pincode);
		ob.setMobileno(mobileno);
		ob.setOrderdate(orderdate);
		cart cartservices = new cart();
		ob.setUserid(cb.getuserID());
		double result = cartservices.orderCart(cb.getuserID(),ob,db);
		if(result>=0) {
			System.out.println(result);
			model.addAttribute("total", result);
			return "confirmOrder";
		}
		return "redirect:/logout";
	}
	
	@RequestMapping(value="/payment")
	public String payment(OrderBean ob,Model model,HttpServletRequest req) {
		CredentialsBean cb = (CredentialsBean) model.getAttribute("User");
		if(cb==null) {
			return "index";
		}
		else {
			if(!cb.getuserType().equals("customer")) {
				return "index";
			}
		}
		creditcard card=new creditcard();
		String number,validfrom,validto,Balance;
		number = req.getParameter("number");
		validfrom = req.getParameter("validfrom");
		validto = req.getParameter("validto");
		Balance = req.getParameter("Balance");
		card.addCard(number, validfrom, validto, Balance, db);
		return "shipping";
	}
	
	
	
	

	
	
	

}
