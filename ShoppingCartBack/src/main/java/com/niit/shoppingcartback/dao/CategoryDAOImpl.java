package com.niit.shoppingcartback.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartback.model.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@Transactional
	public void delete(String id) {
		Category categoryToDelete = new Category();
		categoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}

	@Transactional
	public Category get(String id) {
		String hql = "from Category where id ='" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}

	@Transactional
	public List<Category> list() {
		@SuppressWarnings({ "unchecked" })
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}

	public void editCategory(Category category) {

		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@Transactional
	public List<Category> search(String keyWord) {
		
	/*int id = Integer.parseInt(keyWord);*/
		
		 //String hql = "from Category p where p.name like '%" + keyWord + "%' or p.description like '%"+ keyWord + "%'";
					  
		String hql = "from Category p where p.name like '%" + keyWord + "%' or p.description like '%"+ keyWord + "%' or p.id like '%" + keyWord + "%'";
		 
		//String hql = "SELECT * FROM Category WHERE id  LIKE " + keyWord + "% OR name LIKE " + keyWord + "% OR description LIKE " + keyWord + "%";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> categoryList = (List<Category>) (query).list();
		
		return categoryList;

	}

}
