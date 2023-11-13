package com.klef.jfsd.springboot.model;

import java.util.Arrays;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name = "customer_table")
public class Customer {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="customer_id")
    private int id;
    @Column(name="customer_fullname",nullable=false,length = 50)
    private String fullname;
    @Column(name="customer_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="customer_gender",nullable=false,length = 10)
    private String gender;
    @Lob
	@Column(columnDefinition = "LONGBLOB")
	private byte[] image;
    @Column(name="customer_password",nullable=false,length = 30)
    private String password;
    @Column(name="customer_contactno",nullable=false,unique = true)
    private String contactno;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", fullname=" + fullname + ", email=" + email + ", gender=" + gender + ", image="
				+ Arrays.toString(image) + ", password=" + password + ", contactno=" + contactno + "]";
	}
	
	
	
    
}
