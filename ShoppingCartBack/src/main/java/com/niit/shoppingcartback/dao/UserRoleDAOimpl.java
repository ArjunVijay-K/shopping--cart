package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartback.model.User;
import com.niit.shoppingcartback.model.UserRole;

@Repository("UserRoleDAO")
public class UserRoleDAOimpl implements UserRoleDAO {
	

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public UserRole get(String emailid) {
		
		
		String hql = "from UserRole where emailid ='"+ emailid +"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserRole> listUser = (List<UserRole>) query.list();
		
		if (listUser != null && !listUser.isEmpty()){
			return listUser.get(0);
		}
		return null;
	}
	@Transactional
	public List<UserRole> list() {
		@SuppressWarnings({ "unchecked" })
		List<UserRole> listUserRole = (List<UserRole>)
		sessionFactory.getCurrentSession().createCriteria(UserRole.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUserRole;
	}
	@Transactional
	public void saveOrUpdate(UserRole userRole) {
		sessionFactory.getCurrentSession().saveOrUpdate(userRole);
		
	}
	@Transactional
	public void delete(String userId) {
		User userRoleToDelete = new User();
		userRoleToDelete.setUsersId(userId);
		sessionFactory.getCurrentSession().delete(userRoleToDelete);
		
	}

}
