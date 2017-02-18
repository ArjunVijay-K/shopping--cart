package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.CategoryDAO;
import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.dao.SupplierDAO;
import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.Supplier;


@Controller
public class ProductController {

	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	
	
	@RequestMapping("/Productform")
	public ModelAndView product(){
		
		List<Supplier> supplierList = supplierDAO.list();
		List<Category> categoryList = categoryDAO.list();
		ModelAndView mv = new ModelAndView("Productform");
		mv.addObject("adminloggedin", true);
		mv.addObject("supplierList", supplierList);		
		mv.addObject("categoryList", categoryList);
				return mv;
		
	}
	
	@RequestMapping("/newproduct")	
	public ModelAndView newproduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file, Model model){
		productDAO.saveOrUpdate(product);
		String path = "F://My shoppingcart/Shoppingcartfrontend/src/main/webapp/WEB-INF/resources/img/product/";
		
	FileUtil.upload(path, file, product.getProduct_Id()+".jpg");
		
		
		model.addAttribute("adminloggedin", true);
		
		
		return  new ModelAndView("adminlogin");
	}
	
@RequestMapping("/viewProduct")
	
	public ModelAndView viewproduct(){
	
	List<Product> productList = productDAO.list();
	
	ModelAndView mv = new ModelAndView("adminlogin");
	
	mv.addObject("productList", productList);
	mv.addObject("isviewProductclicked", true);
	mv.addObject("adminloggedin", true);
	
	return mv;
}

@RequestMapping("deleteProduct/{product_Id}")
public String deleteProduct(@PathVariable("product_Id") String product_Id){
	
	productDAO.delete(product_Id);
	
	return "redirect:/viewProduct";
	
	
	
}

@RequestMapping ("editProduct/{product_Id}")
public ModelAndView editProduct(@PathVariable("product_Id") String product_Id){
	
Product product =	productDAO.get(product_Id);

	ModelAndView mv  = new ModelAndView("editProduct");
	mv.addObject("product", product);
	mv.addObject("adminloggedin", true);
	return mv;
	
}

@RequestMapping ("/editProduct")
public String editProduct(@ModelAttribute Product product){
		
		
		
		productDAO.saveOrUpdate(product);
		
		return "redirect:/viewProduct";
}



}