package com.niit.shoppingcartback.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;


@Entity
@Table(name = "user")
@Component
public class User {
	
	@Id	
	@GeneratedValue
	private String usersId;
	
	
	@Column(name="username",  columnDefinition="VARCHAR(35)" )
	private String username;		
	
	
	private String password;
	
	
	private String mobilenumber;
	
	
	@Column(name="emailid", columnDefinition="VARCHAR(35)" )
	private String emailid;
	
	
	private String address;
	
	private boolean enabled;

	
	
	
	/* private boolean enabled;
	 
	 
	@Generated(value = { "" })
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date date = new java.sql.Date(new java.util.Date().getTime());
	
	
	@Transient
	private String FirstName;
	@Transient
	private String LastName;
	*/
	
	
	public String getUsersId() {
		return usersId;
	}

	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "usersId")
	private UserRole userRole;
		
	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	
	/*@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "usersId")
	private ShippingAddress shippingAddress;

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	*/
	

	
	
	
}
