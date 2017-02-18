package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcartback.dao.CategoryDAO;
import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.dao.UserDAO;
import com.niit.shoppingcartback.dao.UserRoleDAO;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.User;
import com.niit.shoppingcartback.model.UserRole;


@Controller

public class UserController {

	@Autowired(required = true)
	private UserDAO userDAO;
	
	

	@Autowired
	private UserRoleDAO userRoleDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/signin")
	public String login(Principal p, Model model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout ) {
		
		
	String emailid = p.getName();
		UserRole userRole = userRoleDAO.get(emailid);
		String name = userRole.getUsername();
	String role = userRole.getRole();
		User user = userDAO.getByEmail(emailid);
		 model.addAttribute("user", user);
	model.addAttribute("userId", user.getUsersId());
	if(role.equals("ROLE_USER")){
			 List<Product> productList = productDAO.list();
			 model.addAttribute("productList", productList);
			 model.addAttribute("name", name);
			 model.addAttribute("userloggedin", true);
			 return "userlogin";
		
	}
	else if(role.equals("ROLE_ADMIN")){
			 model.addAttribute("adminloggedin", true);
			 model.addAttribute("name", name);
			 
			 return "adminlogin";
			 
	}
	else {
	
			model.addAttribute("error", "Invalid Credetional");
			return "loginpage";
	}
	}

}



