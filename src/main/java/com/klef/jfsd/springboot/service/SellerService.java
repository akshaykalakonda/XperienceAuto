package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;

public interface SellerService {

	public String addseller(Seller c);
	public Seller checksellerlogin(String uname,String pwd);
	public Seller checksellerloginstatus(String uname,String pwd);
	public String addproduct(Product p);
	public List<Product> viewallproduct();
	public Product getProductbyid(int pid);
	public List<Product> produtsyname(int name);
	public String deleteproduct(int pid);
}
