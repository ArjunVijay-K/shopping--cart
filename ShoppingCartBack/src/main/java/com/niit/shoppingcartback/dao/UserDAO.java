package com.niit.shoppingcartback.dao;

import com.niit.shoppingcartback.model.User;

import java.util.List;

public interface UserDAO {

	public List<User> list();

	public User get(String username);

	public User getByEmail(String email);

	public User getById(String id);

	public void saveOrUpdate(User user);

	public void delete(String user_Id);

	public boolean isValidUser(String emailid, String password, boolean b);

	public boolean isAllReadyRegister(String email, boolean b);
}
