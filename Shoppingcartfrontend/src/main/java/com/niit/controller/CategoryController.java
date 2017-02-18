package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.CategoryDAO;
import com.niit.shoppingcartback.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	@RequestMapping("/newCategory")
	public ModelAndView newCategory(@ModelAttribute Category category){
		
		ModelAndView mv = new ModelAndView("adminlogin");
		
		mv.addObject("adminloggedin", true);
		
		categoryDAO.saveOrUpdate(category);
		
		return mv;
		
	}

	@RequestMapping("/Viewcategory")
	public ModelAndView viewcategory(){
		
		List<Category> categoryList = categoryDAO.list();
		
		ModelAndView mv = new ModelAndView("adminlogin");
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("isViewcategoryclicked", true);
		mv.addObject("adminloggedin", true);
		
		return mv;
		
		
	}
	@RequestMapping("deletecategory/{id}")
	public String deleteCategory(@PathVariable("id") String id){

		categoryDAO.delete(id);
		
		
				
		return "redirect:/Viewcategory";
		
	}
	
	@RequestMapping ("editcategory/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id){
		
	Category category =	categoryDAO.get(id);
	
		ModelAndView mv  = new ModelAndView("editCategory");
		mv.addObject("category", category);
		mv.addObject("adminloggedin", true);
		return mv;
		
	}
	@RequestMapping ("editCategory")
public String editCategory(@ModelAttribute Category category){
		
		
		
		categoryDAO.saveOrUpdate(category);
		
		return "redirect:/Viewcategory";
		
	}
}
