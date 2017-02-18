package com.niit.shoppingcartback.dao;

import java.util.List;

import com.niit.shoppingcartback.model.UserRole;

public interface UserRoleDAO {
	
	public UserRole get(String emailid);

	public List<UserRole> list();	
	
	public void saveOrUpdate(UserRole userRole);
		
	public void delete(String userId);

}
