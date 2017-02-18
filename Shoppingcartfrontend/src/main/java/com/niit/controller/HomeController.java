package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.CategoryDAO;
import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.dao.ShippingAddressDAO;
import com.niit.shoppingcartback.dao.UserDAO;
import com.niit.shoppingcartback.dao.UserRoleDAO;
import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.ShippingAddress;
import com.niit.shoppingcartback.model.User;
import com.niit.shoppingcartback.model.UserRole;


@Controller
public class HomeController {

	@Autowired
	private User user;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private UserRole userRole;
	
	@Autowired
	private UserRoleDAO userRoleDAO;
	
	@Autowired
	private ShippingAddressDAO shippingAddressDAO;
	
	@RequestMapping("/home")
	public String home() {

		ModelAndView mv = new ModelAndView();
		List<Product> List = productDAO.list();
		mv.addObject("List", List);
		return "redirect:/";
	}
	@RequestMapping("/")
	public ModelAndView listedProduct()
	{	ModelAndView mv=new ModelAndView("/home");
		List<Category> CategoryList = categoryDAO.list();
		List<Product> List = productDAO.list(); 
		mv.addObject("productList",List);
		mv.addObject("categoryList",CategoryList);	
		return mv;
		
	}

	
	
	@RequestMapping("/loginpage")
	public String loginpage(@RequestParam(value="error",required=false)String error,
			@RequestParam(value="logout",required=false)String logout, Model model)
	{
		System.out.println("/ loginpage");
		if(	error != null){
			model.addAttribute("error","Invalid Credentials");
			
		}
		if(logout !=null)
			model.addAttribute("logout","You have Successfully Logged Out");
		
	
	
	return "login";
	}
	/*@RequestMapping("/logout")
	public ModelAndView showlogoutpage()
	{
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("message","You have successfully logged out" );
		return mv;
	}*/
	
	
	
	

		
	
		
	
	@RequestMapping("getregistration")
	public ModelAndView getregistration() {
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("signupclicked", true);
		
		return mv;
	}
	
	
	@RequestMapping("/newUser")
	public ModelAndView signup(@ModelAttribute User user, @ModelAttribute ShippingAddress shippingAddress,@RequestParam(value = "emailid") String email){
		
		ModelAndView mv;
		String message;
		
		if (userDAO.isAllReadyRegister(email, true)){
			message = "Your emailid already exist,You have to log in first";
		}
		else
		{
			
			user.setEnabled(true);
			userRole.setEmailid(user.getEmailid());
			userRole.setRole("ROLE_USER");
			userRole.setUsername(user.getUsername());
			
			
			user.setUserRole(userRole);
			userRole.setUser(user);
			
			
			/*user.setShippingAddress(shippingAddress);
			shippingAddress.setUser(user);*/
			
			userDAO.saveOrUpdate(user);
			userRoleDAO.saveOrUpdate(userRole);
		
			shippingAddress.setUsersId(user.getUsersId());
			shippingAddressDAO.saveorupdate(shippingAddress);
			message="You have successfully registerd";
		}
		
		 mv = new ModelAndView("login");
		mv.addObject("message",message);
		
		return mv;
	}
	
	@RequestMapping("/Categoryform")
	public ModelAndView category(){
		
		ModelAndView mv = new ModelAndView("Categoryform");
		mv.addObject("adminloggedin", true);
		
		
				return mv;
		
	}
	
	
	
	@RequestMapping("/Supplierform")
	public ModelAndView supplier(){
		
		
		ModelAndView mv = new ModelAndView("Supplierform");
		mv.addObject("adminloggedin", true);
		
		
				return mv;
	}

	/*@RequestMapping("/userlogin")
	public ModelAndView userlogged(){

	
	}*/
}
