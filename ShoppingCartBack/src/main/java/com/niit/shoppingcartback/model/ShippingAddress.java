package com.niit.shoppingcartback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "ShippingAddress")
@Component	
public class ShippingAddress {
	
	@Id
	@Column(name = "shippingId")
	@GeneratedValue
	private String shippingId ;	
	
	@NotNull
	private String usersId;
	@NotNull
	private String username;
	@NotNull
	private String mobilenumber;
		
	@NotNull
	private String  emailid;
	@NotNull
	private String address;
		
		
		/* @OneToOne(cascade = CascadeType.ALL)
		    @JoinColumn(name="userId")	 
		 private User user;

		
		 
		 
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}*/
		
		
		
		
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
		
	
	

}
