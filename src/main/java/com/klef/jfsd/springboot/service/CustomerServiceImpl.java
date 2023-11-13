package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Servicereq;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ServiceReqRepository;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private ServiceReqRepository serviceReqRepository;
	
	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Registration Successfull..!!";
	}

	@Override
	public String updatecustomer(Customer c) {
		
		Customer cu = customerRepository.findById(c.getId()).get();
		cu.setFullname(c.getFullname());
		cu.setContactno(c.getContactno());		
		cu.setPassword(c.getPassword());
		customerRepository.save(cu);	
		return "Profile Updated Successfully";
	}

	@Override
	public Customer viewcustomerbyid(int cid) {
		Optional<Customer> obj =  customerRepository.findById(cid);	
		if(obj.isPresent()){
			Customer c = obj.get();
			return c;
		}
		else{
	         return null;
	    }
	}

	@Override
	public Customer checkcuslogin(String email, String pwd) {
		return customerRepository.checkcuslogin(email, pwd);
	}

	@Override
	public List<Servicereq> viewRequestRaised(String cname) {
		System.out.println(cname);
		return serviceReqRepository.listOfrequest(cname);
	}

	@Override
	public String addservicee(Servicereq s) {
		serviceReqRepository.save(s);
		return "Service Request Raised Successfully..!!";
	}

}
