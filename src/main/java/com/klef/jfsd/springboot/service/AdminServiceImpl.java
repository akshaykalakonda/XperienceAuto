package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.model.Servicereq;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;
import com.klef.jfsd.springboot.repository.ServiceReqRepository;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private ServiceReqRepository serviceReqRepository;
	
	@Autowired
	private SellerRepository sellerRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Customer> viewallcustomers() {
		return customerRepository.findAll();
	}

	@Override
	public String deletecus(int eid) {
		Optional<Customer> obj =  customerRepository.findById(eid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Customer emp = obj.get();
          
          customerRepository.delete(emp);
          
          msg = "Customer Deleted Successfully..!";
        }
        else
        {
          msg = "Customer ID Not Found";
        }
        
        return msg;
	}

	@Override
	public List<Servicereq> viewallservicereq() {
		return serviceReqRepository.findAll();
	}

	@Override
	public int updatestatus(int rid, String status) {
		return adminRepository.updatestatus(rid, status);
	}

	@Override
	public long countCustomers() {
		return customerRepository.count();
	}

	@Override
	public long countProducts() {
		return productRepository.count();
	}

	@Override
	public long countSellers() {
		return sellerRepository.count();
	}

	@Override
	public long countRequets() {
		return serviceReqRepository.count();
	}

	@Override
	public Customer viewcustomerbyid(int id) {
		Optional<Customer> obj =  customerRepository.findById(id);
        
        if(obj.isPresent())
        {
          Customer customer = obj.get();
          
          return customer;
        }
        else
        {
          return null;
        }	
	}

	@Override
	public List<Seller> viewallsellersacceptence() {
		return adminRepository.viewallselleraccepted();
	}

	@Override
	public List<Seller> viewallseller() {
		return sellerRepository.findAll();
	}

	@Override
	public int selupdatestatus(int eid, boolean status) {
		return adminRepository.sellerstatus(eid, status);
	}

	@Override
	public Seller viewsellerbyid(int id) {
		Optional<Seller> obj =  sellerRepository.findById(id);
        
        if(obj.isPresent())
        {
          Seller seller = obj.get();
          
          return seller;
        }
        else
        {
          return null;
        }	
	}

	@Override
	public String deletesel(int eid) {
		Optional<Seller> obj =  sellerRepository.findById(eid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Seller seller = obj.get();
          
          sellerRepository.delete(seller);
          
          msg = "Seller Deleted Successfully..!";
        }
        else
        {
          msg = "Seller ID Not Found";
        }
        
        return msg;
	}
	
}
