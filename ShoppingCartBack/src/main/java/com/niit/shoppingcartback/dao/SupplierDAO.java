package com.niit.shoppingcartback.dao;

import java.util.List;

import com.niit.shoppingcartback.model.Supplier;

public interface SupplierDAO {
	
public List<Supplier> list();
	
	public Supplier get(String id);
	
	public void saveOrUpdate(Supplier category);
	
	public void delete(String id);

}
