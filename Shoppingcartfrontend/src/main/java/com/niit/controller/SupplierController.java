package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.SupplierDAO;
import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/newSupplier")
	
	public ModelAndView newsupplier(@ModelAttribute Supplier supplier){
		
		ModelAndView mv = new ModelAndView("adminlogin");
				
				mv.addObject("adminloggedin", true);

		supplierDAO.saveOrUpdate(supplier);
		
		return mv;
		
		
	}
	
	@RequestMapping("/viewSupplier")
	
	public ModelAndView viewsupplier(){
	
	List<Supplier> supplierList = supplierDAO.list();
	
	ModelAndView mv = new ModelAndView("adminlogin");
	
	mv.addObject("supplierList", supplierList);
	mv.addObject("isviewsupplierclicked", true);
	mv.addObject("adminloggedin", true);
	
	return mv;
	
}
	
	@RequestMapping ("deleteSupplier/{id}")
	
	public String deleteSupplier(@PathVariable("id") String id){
		
		supplierDAO.delete(id);
		
		return "redirect:/viewSupplier";
		
	}
	
	@RequestMapping ("editSupplier/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id){
		
	Supplier supplier =	supplierDAO.get(id);
	
		ModelAndView mv  = new ModelAndView("editSupplier");
		mv.addObject("supplier", supplier);
		mv.addObject("adminloggedin", true);
		return mv;
		
	}
	@RequestMapping ("/editSupplier")
public String editSupplier(@ModelAttribute Supplier supplier){
		
		
		
		supplierDAO.saveOrUpdate(supplier);
		
		return "redirect:/viewSupplier";
		
	}
}



