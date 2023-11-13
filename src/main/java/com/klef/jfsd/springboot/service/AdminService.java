package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.model.Servicereq;

public interface AdminService {
	
	public Admin checkadminlogin(String uname,String pwd);
	public List<Customer> viewallcustomers();
	public List<Seller> viewallsellersacceptence();
	public List<Seller> viewallseller();
	public Customer viewcustomerbyid(int id);
	public Seller viewsellerbyid(int id);
	public String deletecus(int eid);
	public String deletesel(int eid);
	public long countCustomers();
	public long countProducts();
	public long countSellers();
	public long countRequets();
	
	public List<Servicereq> viewallservicereq();
	public int updatestatus(int eid,String status);
	public int selupdatestatus(int eid,boolean status);
}
