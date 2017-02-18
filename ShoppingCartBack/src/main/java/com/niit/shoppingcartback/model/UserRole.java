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

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.springframework.stereotype.Component;

@Entity
@Table(name="UserRole")
@Component
public class UserRole {

	@Id
	@GeneratedValue(generator = "newGenerator")
	@GenericGenerator(name="newGenerator", strategy="foreign" , parameters = {
	@Parameter(value = "user" ,name = "property") } )	
	private String userId;
	
	@NotNull 
	@Column(name="username", unique=true, columnDefinition="VARCHAR(35)")	
	private String username;
	
	@NotNull
	@Column(name="emailid", unique=true, columnDefinition="VARCHAR(35)")
	private String emailid;
	
	private String role;
	
	
	
	 

	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getEmailid() {
		return emailid;
	}



	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}





	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	@OneToOne(cascade = CascadeType.ALL)
	    @JoinColumn(name="userId")	 
	 private User user;

	
	
}
	

