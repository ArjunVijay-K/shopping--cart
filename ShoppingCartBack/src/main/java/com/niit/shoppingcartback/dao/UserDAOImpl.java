package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartback.model.User;




@Repository("UserDAO")
public class UserDAOImpl implements UserDAO {

	
@Autowired
private SessionFactory sessionFactory;


public UserDAOImpl(SessionFactory sessionFactory){
	this.sessionFactory = sessionFactory;
	}

@Transactional
public void saveOrUpdate(User user) {
	//Users users=new Users();
	//UserRole role=new UserRole();
	sessionFactory.getCurrentSession().saveOrUpdate(user);
//users.setUsersId(user.getId());
	/*users.setUsername(user.getUsername());
	users.setPassword(user.getPassword());
	users.setEnabled(true);
	sessionFactory.getCurrentSession().saveOrUpdate(users);*/
	//role.setUsername(user.getUsername());
	//role.setRole("ROLE_USER");
	//sessionFactory.getCurrentSession().saveOrUpdate(role);
}

@Transactional
public void delete(String user_Id){
	User userToDelete = new User();
	userToDelete.setUsersId(user_Id);
	sessionFactory.getCurrentSession().delete(userToDelete);
}

@Transactional
public User get(String username){
	String hql = "from User where username ='"+ username +"'";
	org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> listUser = (List<User>) query.list();
	
	if (listUser != null && !listUser.isEmpty()){
		return listUser.get(0);
	}
	return null;
}

@Transactional
public List<User> list(){
	@SuppressWarnings({ "unchecked" })
	List<User> listUser = (List<User>)
	sessionFactory.getCurrentSession().createCriteria(User.class)
	.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return listUser;
}


@Transactional
public boolean isValidUser(String emailid, String password, boolean b) {
	
	String hql = "from User where emailid= '" + emailid + "' and " + " password ='" + password+"'";
	org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> list = (List<User>) query.list();
	if (list != null && !list.isEmpty()) {
		return true;
	}
	return false;

}

@Transactional
public boolean isAllReadyRegister(String email, boolean b) {
	
	String hql = "from User where emailid ='"+ email +"'";
 			
				
	org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> list = (List<User>) query.list();
	if (list != null && !list.isEmpty()) {
		return true;
	}
	return false;

}

@Transactional
public User getByEmail(String email) {
	String hql = "from User where emailid ='"+ email +"'";
	org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> listUser = (List<User>) query.list();
	
	if (listUser != null && !listUser.isEmpty()){
		return listUser.get(0);
	}
	return null;
}

@Transactional
public User getById(String usersId) {
	String hql = "from User where usersId ='"+ usersId +"'";
	org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<User> listUser = (List<User>) query.list();
	
	if (listUser != null && !listUser.isEmpty()){
		return listUser.get(0);
	}
	return null;
}


	
}
