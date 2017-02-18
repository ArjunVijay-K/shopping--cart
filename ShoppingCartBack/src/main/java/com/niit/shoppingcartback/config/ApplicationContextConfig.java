package com.niit.shoppingcartback.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcartback.dao.CartDAO;
import com.niit.shoppingcartback.dao.CartDAOimpl;
import com.niit.shoppingcartback.dao.CategoryDAO;
import com.niit.shoppingcartback.dao.CategoryDAOImpl;
import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.dao.ProductDAOimpl;
import com.niit.shoppingcartback.dao.ShippingAddressDAO;
import com.niit.shoppingcartback.dao.ShippingAddressDAOimpl;
import com.niit.shoppingcartback.dao.SupplierDAO;
import com.niit.shoppingcartback.dao.SupplierDAOimpl;
import com.niit.shoppingcartback.dao.UserDAO;
import com.niit.shoppingcartback.dao.UserDAOImpl;
import com.niit.shoppingcartback.model.Cart;
import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.ShippingAddress;
import com.niit.shoppingcartback.model.Supplier;
import com.niit.shoppingcartback.model.User;
import com.niit.shoppingcartback.model.UserRole;



@Configuration
@ComponentScan("com.niit.shoppingcartback")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Autowired
	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/ShoppingCart");

		dataSource.setUsername("sa");
		dataSource.setPassword("");

		return dataSource;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.format_sql", "true");

		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);	
		sessionBuilder.addAnnotatedClass(User.class);	
		sessionBuilder.addAnnotatedClass(UserRole.class);
		sessionBuilder.addAnnotatedClass(ShippingAddress.class);
		sessionBuilder.addAnnotatedClass(Cart.class);	
		return sessionBuilder.buildSessionFactory();
		
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;

	}

	@Autowired(required = true)
	@Bean(name = "userDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
		return new UserDAOImpl(sessionFactory);
	}

	@Autowired(required = true)
	@Bean(name = "categoryDAO")
	public CategoryDAOImpl getCategoryDAO(SessionFactory sessionFactory) {
		return new CategoryDAOImpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "productDAO")
	public ProductDAO getProductDAO(SessionFactory sessionFactory) {
		return new ProductDAOimpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "supplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
		return new SupplierDAOimpl();
	}

	@Autowired(required = true)
	@Bean(name = "shippingAddressDAO")
	public ShippingAddressDAO getShippingAddressDAO(SessionFactory sessionFactory) {
		return new ShippingAddressDAOimpl(sessionFactory);
	}
	
	@Autowired(required = true)
	@Bean(name = "CartDAO")
	public CartDAO getCartDAO(SessionFactory sessionFactory) {
		return new CartDAOimpl(sessionFactory);
	}

		

	
}
