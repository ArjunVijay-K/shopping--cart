package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcartback.model.ShippingAddress;

@RequestMapping("ShippingAddressDAOimpl")
public class ShippingAddressDAOimpl implements ShippingAddressDAO {

	@Autowired
	private SessionFactory sessionFactory;
	 
	
	public ShippingAddressDAOimpl (SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}	
	
	@Transactional
	public List<ShippingAddress> list(String usersId) {
		String hql = "from ShippingAddress where emailid='"+usersId+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> list = (List<ShippingAddress>) query.list();
		
		return list;
	}
	@Transactional
	public ShippingAddress get(String username) {
		String hql = "from ShippingAddress where username ='"+ username+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
        List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) (query).list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()){
			return listShippingAddress.get(0);
		}
		return null;
	}

	
	@Transactional
	public void saveorupdate(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		
	}
	@Transactional
	public void delete(String ShippingId) {
		ShippingAddress shippingAddressToDelete = new ShippingAddress();
		shippingAddressToDelete.setUsersId(ShippingId);
		sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
		
	}
	@Transactional
	public void editShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		
	}
	@Transactional
	public ShippingAddress getbyShippingId(String ShippingId) {
		String hql = "from ShippingAddress where ShippingId ='"+ ShippingId+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) (query).list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()){
			return listShippingAddress.get(0);
		}
		return null;
		
	}

}
