package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Servicereq;

public interface CustomerService {
	
	public String addcustomer(Customer c);
	public String updatecustomer(Customer c);
	public Customer viewcustomerbyid(int cid);
	public Customer checkcuslogin(String email,String pwd);
	
	public List<Servicereq> viewRequestRaised(String cname);
	public String addservicee(Servicereq s);
}
