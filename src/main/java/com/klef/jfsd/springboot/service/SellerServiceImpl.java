package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService{

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private SellerRepository sellerRepository;

	@Override
	public String addproduct(Product p) {
		
		productRepository.save(p);
		return "Product Added Successfully";
	}

	@Override
	public List<Product> viewallproduct() {
		return productRepository.findAll();
	}

	@Override
	public Product getProductbyid(int pid) {
	Optional<Product> product = productRepository.findById(pid);
      if (product.isPresent()) {
          return product.get(); // Replace with your actual method to get image data
      }
		return null;
	}

	@Override
	public String addseller(Seller s) {	
		sellerRepository.save(s);
		return "Registration Successfull..!!";	
	}

	@Override
	public Seller checksellerlogin(String uname, String pwd) {
		return sellerRepository.checkcuslogin(uname, pwd);
	}

	@Override
	public List<Product> produtsyname(int name) {
		return productRepository.getproductsbyname(name);
	}

	@Override
	public Seller checksellerloginstatus(String uname, String pwd) {
		return sellerRepository.checkcusloginstatus(uname, pwd);
	}

	@Override
	public String deleteproduct(int pid) {
		Optional<Product> obj =  productRepository.findById(pid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Product product = obj.get();
          
          productRepository.delete(product);
          
          msg = "Product Deleted Successfully..!";
        }
        else
        {
          msg = "Product ID Not Found";
        }
		return msg;
	}

}
