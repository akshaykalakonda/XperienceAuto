package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "seller_table")
public class Seller {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="seller_id")
    private int id;
    @Column(name="seller_fullname",nullable=false,length = 50)
    private String fullname;
    @Column(name="seller_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="seller_gender",nullable=false,length = 10)
    private String gender;
    @Column(name="seller_password",nullable=false,length = 30)
    private String password;
    @Column(name="seller_contactno",nullable=false,unique = true)
    private String contactno;
    @Column(name="seller_registrationdate" , nullable = false )
    private String date;
    @Column(name="seller_acceptence",nullable = false)
    private boolean sacceptence;
	
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public boolean isSacceptence() {
		return sacceptence;
	}
	public void setSacceptence(boolean sacceptence) {
		this.sacceptence = sacceptence;
	}
   
}
