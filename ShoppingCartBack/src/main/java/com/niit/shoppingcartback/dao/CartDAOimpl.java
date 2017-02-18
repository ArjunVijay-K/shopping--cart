package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartback.model.Cart;
import com.niit.shoppingcartback.model.ShippingAddress;

@Repository("CartDAO")
public class CartDAOimpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CartDAOimpl(SessionFactory sessionFactory)  {
		this.sessionFactory = sessionFactory;
	}
	
	
	@Transactional
	public void delete(String id) {
		Cart cartToDelete = new Cart();
		cartToDelete.setCartid(id);
		sessionFactory.getCurrentSession().delete(cartToDelete);
		
		/*Cart categoryToDelete = new Cart();
		categoryToDelete.setCartId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);*/
	}
	
	@Transactional
	public List<Cart> list(String emailid) {
		String hql = "from Cart where emailid=" + "'" + emailid + "'   and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		return list;
	}
	@Transactional
	public List<Cart> getlist(String usersId) {
		String hql = "from Cart where usersId=" + "'" + usersId + "' and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		return list;
	}
	@Transactional 
	public Cart get(String id) {
		String hql = "from Cart where usersId=" + "'" + id + "'   and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		if (list != null && !list.isEmpty()){
			return list.get(0);
		}
		return null;
	}
	
	
	@Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		}
	
	
	
	@Transactional
	public Long getTotalAmount(String id) {
	String hql = "select sum(price) from Cart where usersId = " + "'" + id + "'" + "and status = '" + "N" +"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	Long sum = (Long) query.uniqueResult();
		return sum;
	}

	@Transactional
	public Long getCount(String username) {
		String hql ="select count(*) from Cart where userName = '" + username + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long count = (Long) query.uniqueResult();
		return count;
	}

	@Transactional
	public List<Cart> list() {
		@SuppressWarnings({ "unchecked" })
		List<Cart> listCart = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCart;
	}

	@Transactional
	public List<Cart> search(String keyWord) {
		String hql = "from Cart p where p.userName like '%" + keyWord + "%' or p.productName like '%"+ keyWord + "%' or p.status like '%" + keyWord + "%' or p.price like '%" + keyWord + "%' or p.days like '%" + keyWord + "%'";
		 
		//String hql = "SELECT * FROM Category WHERE id  LIKE " + keyWord + "% OR name LIKE " + keyWord + "% OR description LIKE " + keyWord + "%";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> cartList = (List<Cart>) (query).list();
		
		return cartList;
	}
	@Transactional
	public void UpdateSatus(String username) {
		// TODO Auto-generated method stub
		
	}


	@Transactional
	public boolean itemAlreadyExist(String userId, String productId, boolean b) {
		String hql = "from Cart where userId= '" + userId + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}


	@Transactional
	public Cart getByUserandProduct(String userId, String productId) {
		String hql = "from Cart where userId= '" + userId + "' and " + " productId ='" + productId+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();
		
		if (listCart != null && !listCart.isEmpty()){
			return listCart.get(0);
		}
		return null;
	}
}