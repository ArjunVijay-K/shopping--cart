package com.niit.shoppingcartback.dao;

import com.niit.shoppingcartback.model.Category;
import java.util.List;

public interface CategoryDAO {
	
	public List<Category> list();
	
	public Category get(String id);
	
	public void saveOrUpdate(Category category);
	
	public void delete(String id);
	
	public void editCategory(Category category);
	
	public List<Category> search(String keyWord);

}
