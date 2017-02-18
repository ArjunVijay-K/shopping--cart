package com.niit.shoppingcartback.dao;

import java.util.List;

import com.niit.shoppingcartback.model.ShippingAddress;

public interface ShippingAddressDAO {
	
	public List<ShippingAddress> list(String usersId);
	
	public ShippingAddress get(String username);
	
	public 	ShippingAddress getbyShippingId (String ShippingId);
	
	public void saveorupdate (ShippingAddress shippingAddress);
	
	public void delete(String ShippingId);
	
	public void editShippingAddress(ShippingAddress shippingAddress);
	
	
	

}
