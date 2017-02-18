package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartback.model.Product;

public class ProductDAOimpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDAOimpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;}
		
		@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
		
	}

		@Transactional
	public List<Product> list(String category) {
		// TODO Auto-generated method stub
		String hql = "from Product where category='" + category + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		return listProduct;
	}

		@Transactional
	public Product get(String Id) {
		// TODO Auto-generated method stub
			String hql = "from Product where product_Id ='" + Id + "'";
			Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> listProduct = (List<Product>) (query).list();

			if (listProduct != null && !listProduct.isEmpty()) {
				return listProduct.get(0);
			}
			return null;
		}
		
	

		@Transactional
	public void saveOrUpdate(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}
		
		@Transactional
	public void delete(String product_Id) {
		// TODO Auto-generated method stub
		Product productToDelete = new Product();
		productToDelete.setProduct_Id(product_Id);
		sessionFactory.getCurrentSession().delete(productToDelete);

	}

		@Transactional
	public List<Product> search(String keyWord) {
		// TODO Auto-generated method stub
		String hql = "from Product p where p.product_Id like '%" + keyWord + "%' or p.product_Name like '%" + keyWord
				+ "%' or p.description like '%" + keyWord + "%' or p.product_Price like '%" + keyWord
				+ "%' or p.supplier_Name like '%" + keyWord + "%' or p.category like '%" + keyWord + "%'";

		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> productList = (List<Product>) (query).list();

		return null;
	}

}
