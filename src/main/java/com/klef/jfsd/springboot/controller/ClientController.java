package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.model.Servicereq;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailManager;
import com.klef.jfsd.springboot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	 private EmailManager emailManager;
	
	@GetMapping("/")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@GetMapping("services")
	public ModelAndView services() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("services");
		return mv;
	}
	
	@GetMapping("customerLogin")
	public ModelAndView customerLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerLogin");
		return mv;
	}
	
	@GetMapping("customerRegistrationPage")
	public ModelAndView customerRegistrationPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerRegistration");
		return mv;
	}
	
	@PostMapping("customerRegistration")
	public ModelAndView customerRegistration(HttpServletRequest request, @RequestParam("cus_img") MultipartFile productImage) throws IOException{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("fname");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("pwd");
			String contact = request.getParameter("contact");
			
			Customer c = new Customer();
			c.setFullname(name);
			c.setEmail(email);
			c.setGender(gender);
			c.setPassword(pwd);
			c.setContactno(contact);
		    c.setImage(productImage.getBytes());
		    msg = customerService.addcustomer(c);
		    mv.setViewName("customerLogin");
		    mv.addObject("message", msg);
		    
		    
		    LocalDate currentDate = LocalDate.now();
		      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		      String currentDateStr = currentDate.format(formatter);
		      
		      LocalTime currentTime = LocalTime.now();
		      DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
		      String currentTimeStr = currentTime.format(timeFormatter);
		      
		        String fileName = "invite.html"; // Correct file name
		            String filePath = request.getServletContext().getRealPath("/" + fileName);
		            
		      String fromEmail = "jfsdsdpams@gmail.com"; // Set your email
		        String toEmail = email; // Use the user's email from the booking
		        String subject = "AutoMobile Managment Registration Confirmation";
		        String text = "Hello Customer" +name +"\n"+" Your Registration into AutoMobile Managment  has been Sucessfull "+"\n"+" Through this email "+email;
		        String text2="Date :-" +currentDateStr +"\n"+"On this Time :-"+currentTimeStr;
		        // Inject JavaMailSender
		        String htmlContent = new String(Files.readAllBytes(Paths.get(filePath)));
		        htmlContent = htmlContent.replace("[name]", name);
		        htmlContent = htmlContent.replace("[text]", text);
		        htmlContent=htmlContent.replace("[text2]", text2);
		        
		        htmlContent=htmlContent.replace("[password]", pwd);

		        emailManager.sendEmail(fromEmail, toEmail, subject, text,htmlContent);
		    
			
		}catch (Exception e) {
			mv.setViewName("customerRegistration");
			msg = "Registration Failed & Provide Valid Details..!!";
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	@PostMapping("checkcuslogin")
	public ModelAndView ckeckcuslogin(HttpServletRequest request) {
		String uname = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		String userEnteredCaptcha = request.getParameter("captcha");
		String storedCaptcha = (String)session.getAttribute("captchaCode");
		Customer c = customerService.checkcuslogin(uname, pwd);
		ModelAndView mv =new ModelAndView();
		if(c!=null && userEnteredCaptcha.equals(storedCaptcha) ) {
			
			session.setAttribute("cid",c.getId()); 
			session.setAttribute("cname", c.getFullname());
			mv.setViewName("customerHome");
		}
		else {
			mv.setViewName("customerLogin");
			mv.addObject("message", "Invalid Login..!");
		}
		return mv;
	}
	
	@GetMapping("customerHome")
	public ModelAndView customerHome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerHome");
		
		 HttpSession session = request.getSession();
	     int cid = (int) session.getAttribute("cid"); 
	     String cname = (String) session.getAttribute("cname"); 
	     mv.addObject("cid", cid);
	     mv.addObject("cname", cname);
		
		return mv;
	}
	
	@GetMapping("customerSpare")
	public ModelAndView customerSpare(HttpServletRequest request,@RequestParam(defaultValue = "1") int page) {
		ModelAndView mv = new ModelAndView();
		int itemsPerPage = 8;
		
	    List<Product> pdata = sellerService.viewallproduct();
		 int totalproducts = pdata.size();
	     int totalPages = (int) Math.ceil((double) totalproducts / itemsPerPage);
	     int startIndex = (page - 1) * itemsPerPage;
	     int endIndex = Math.min(startIndex + itemsPerPage, totalproducts);
	     List<Product> booksSubset = pdata.subList(startIndex, endIndex);
	     mv.addObject("pdata", booksSubset); mv.addObject("currentPage", page);
	     mv.addObject("totalPages", totalPages);
		mv.setViewName("customerSpare");
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
		return mv;
	}

	@GetMapping("customerServiceReq")
	public ModelAndView customerServiceReq(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerServiceReq");
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
		return mv;
	}
	
	@PostMapping("servicesRaiseRequest")
	public ModelAndView servicesRaiseRequest(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
		mv.setViewName("customerServiceReq");
		String msg = null;
		try {
			String fname = cname;
			String servicetype = request.getParameter("servicetype");
			String date = request.getParameter("date");
			String servicetime = request.getParameter("servicetime");
			String description = request.getParameter("description");
			String status = "Pending";
			Servicereq s = new Servicereq();
			s.setFullname(fname);
			s.setServicetype(servicetype);
			s.setDate(date);
			s.setTime(servicetime);
			s.setDescription(description);
			s.setStatus(status);
			msg  = customerService.addservicee(s);
			
		}catch (Exception e) {
			msg = "Provide valid details...!";
		}
		mv.addObject("message", msg);
		return mv;
	}
	
	@GetMapping("customerProfile")
	public ModelAndView customerProfile(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerProfile");
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
	    Customer cc = customerService.viewcustomerbyid(cid);
	    mv.addObject("cc",cc);
		return mv;
	}
	
	@GetMapping("paymentsucessful")
	  public ModelAndView paymentSucessful(HttpServletRequest request,@RequestParam("payment_id") String pid){
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("paymentSucessful");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
	    mv.addObject("pay", pid);
	    return mv;
	  }
	
	@GetMapping("c/{id}")
	public ResponseEntity<byte[]> forProfile(@PathVariable("id") Integer id) throws SQLException {

	   Customer customer = customerService.viewcustomerbyid(id);
	   byte[] imageBytes = null;
	   if (customer!=null) {
		   imageBytes = customer.getImage();
	   }
	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  };
	
	@PostMapping("updateCusProfile")
	public ModelAndView updateCusProfile(HttpServletRequest request) {
		String msg = null;
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
	    
	    try {    	
	    	String fname = request.getParameter("name");
	    	String ph = request.getParameter("phone");
	    	String pwd = request.getParameter("password");
	    	Customer newCs = new Customer();
	    	newCs.setId(cid);
	    	newCs.setFullname(fname);
	    	newCs.setContactno(ph);
	    	newCs.setPassword(pwd);
	    	
	    	msg = customerService.updatecustomer(newCs);
	    	mv.setViewName("customerProfile");
	    	Customer displayCust = customerService.viewcustomerbyid(cid);
	    	mv.addObject("cc", displayCust);
	    	mv.addObject("message", msg);
	    	
	    } catch(Exception e) {
	    	msg = "Invalid Operation...!";
	    	mv.setViewName("customerProfile");
	    	Customer displayCust = customerService.viewcustomerbyid(cid);
	    	mv.addObject("cc", displayCust);
	    	mv.addObject("message", msg);
	    }
		return mv;
	}
	
	@GetMapping("customerRaisedRequest")
	public ModelAndView customerRaisedRequest(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerRaisedRequest");
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid"); 
	    String cname = (String) session.getAttribute("cname");
	    List<Servicereq> rdata = customerService.viewRequestRaised(cname);
	    mv.addObject("cid", cid);
	    mv.addObject("cname", cname);
		mv.addObject("rdata", rdata );
		return mv;
	}
	
	@GetMapping("sellerLogin")
	public ModelAndView sellerLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sellerLogin");
		return mv;
	}
	
	
	@GetMapping("sellerRegistration")
	public ModelAndView sellerRegistration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sellerRegistration");
		return mv;
	}
	
	@PostMapping("addSeller")
	public ModelAndView addSeller(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String fname = request.getParameter("fullname");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("password");
			String contact = request.getParameter("contactnumber");
			LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String currentDateStr = currentDate.format(formatter);
		    
			Seller s = new Seller();
			s.setFullname(fname);
			s.setEmail(email);
			s.setGender(gender);
			s.setPassword(pwd);
			s.setContactno(contact);
			s.setDate(currentDateStr);
			s.setSacceptence(false);
			msg = sellerService.addseller(s);
			mv.setViewName("sellerLogin");
			mv.addObject("message", msg);
			
		}catch (Exception e) {
			mv.setViewName("sellerRegistration");
			msg = "Registration Failed & Provide Valid Details..!!";
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	@PostMapping("checksellerlogin")
	public ModelAndView ckecksellerlogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		Seller s = sellerService.checksellerlogin(email, pwd);
		ModelAndView mv = new ModelAndView();
		if(s!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("sid", s.getId());
			session.setAttribute("sname", s.getFullname());
			mv.setViewName("sellerHome");
		}else {
			Seller ss = sellerService.checksellerloginstatus(email, pwd);
			if(ss!=null) {
				mv.setViewName("sellerLogin");
				mv.addObject("message","Admin has not accepted your request..!");
			}else {
				mv.setViewName("sellerLogin");
				mv.addObject("message","Invalid Login..!");
			}
		}
		return mv;
	}

	@GetMapping("sellerHome")
	public ModelAndView sellerHome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sellerHome");
		HttpSession session = request.getSession();
		int sid = (int) session.getAttribute("sid"); 
	    String sname = (String) session.getAttribute("sname");
	    mv.addObject("sid", sid);
	    mv.addObject("sname", sname);
		return mv;
	}
	
	@GetMapping("sellerAddProduct")
	public ModelAndView sellerAddProduct(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sellerAddProduct");
		HttpSession session = request.getSession();
		int sid = (int) session.getAttribute("sid"); 
	    String sname = (String) session.getAttribute("sname");
	    mv.addObject("sid", sid);
	    mv.addObject("sname", sname);
		return mv;
	}
	
	@GetMapping("addProduct")
	public ModelAndView addProduct(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addProduct");
		HttpSession session = request.getSession();
		int sid = (int) session.getAttribute("sid"); 
	    String sname = (String) session.getAttribute("sname");
	    mv.addObject("sid", sid);
	    mv.addObject("sname", sname);
		return mv;
	}
	
	@PostMapping("insertProduct")
	public ModelAndView insertProduct(HttpServletRequest request, @RequestParam("product_image") MultipartFile productImage) throws IOException{
		HttpSession session = request.getSession();
		int sid = (int) session.getAttribute("sid"); 
	    String sname = (String) session.getAttribute("sname");
		String name = request.getParameter("product_name");
		String manufacturer = request.getParameter("product_description");
		String seller = request.getParameter("seller_name");
		String pro = request.getParameter("product_price");
		Double price = Double.parseDouble(pro);
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			Product p = new Product();
			p.setName(name);
			p.setImage(productImage.getBytes());
			p.setSellername(seller);
			p.setManufacturer(manufacturer);
			p.setPrice(price);
			p.setCusid(sid);
		
			msg = sellerService.addproduct(p);
			
			mv.setViewName("sellerAddProduct");
			mv.addObject("message", msg);
		}catch (Exception e) {
			msg = "Invalid Items Added..!";
			mv.setViewName("sellerAddProduct");
			mv.addObject("message", msg);
		}
		
		return mv;
	}
	
	@GetMapping("p/{id}")
	public ResponseEntity<byte[]> fromDatabaseAsResEntity(@PathVariable("id") Integer id) throws SQLException {

	   Product primeMinisterOfIndia = sellerService.getProductbyid(id);
	   byte[] imageBytes = null;
	   if (primeMinisterOfIndia!=null) {
		   imageBytes = primeMinisterOfIndia.getImage();
	   }
	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	
	@GetMapping("sellerProbyName")
	public ModelAndView sellerProbyName(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sellerProbyName");
		HttpSession session = request.getSession();
		int sid = (int) session.getAttribute("sid"); 
	    String sname = (String) session.getAttribute("sname");
	    List<Product> pdata = sellerService.produtsyname(sid);
	    mv.addObject("pdata", pdata);
	    mv.addObject("sid", sid);
	    mv.addObject("sname", sname);
		return mv;
	}
	
	@GetMapping("prodelete")
	 public ModelAndView deleteprodbyid(@RequestParam("id") int pid,HttpServletRequest request) {
		 ModelAndView mv = new ModelAndView();
		 String msg = sellerService.deleteproduct(pid);
		 HttpSession session = request.getSession();
		 int sid = (int) session.getAttribute("sid"); 
		 String sname = (String) session.getAttribute("sname");
		 List<Product> pdata = sellerService.produtsyname(sid);
		 mv.setViewName("sellerProbyName");
		 mv.addObject("pdata", pdata);
		 mv.addObject("message", msg);
		 mv.addObject("sid", sid);
		 mv.addObject("sname", sname);
		 return mv;
	 }
	
	@GetMapping("cuslogout")
    public String cuslogout(HttpServletRequest request, HttpServletResponse response)
    {
		HttpSession session = request.getSession(false);
		if (session != null) {
		    session.removeAttribute("cid");
		    session.removeAttribute("cname");
		    session.invalidate();
		}
	    return "redirect:/customerLogin";
    }
	
	@GetMapping("sellogout")
    public ModelAndView sellogout()
    {
      ModelAndView mv=new ModelAndView("sellerLogin");
      mv.addObject("message", "Logout Successfully..!");
      return mv;
    }
	
	@GetMapping("adminlogout")
    public ModelAndView adminlogout()
    {
      ModelAndView mv=new ModelAndView("adminLogin");
      mv.addObject("message", "Logout Successfully..!");
      return mv;
    }
	
	@GetMapping("adminLogin")
	public ModelAndView adminLogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminLogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
	    
	    String uname = request.getParameter("username");
	    String pwd = request.getParameter("password");
	    Admin a = adminService.checkadminlogin(uname, pwd);	    
	    ModelAndView mv = new ModelAndView();
	    
	    if(a != null) {
	    mv.setViewName("adminhome");
	    	HttpSession session = request.getSession();
	    	session.setAttribute("aid", a.getId());    
	        session.setAttribute("aname", a.getUsername()); 
	        mv.addObject("ccount", adminService.countCustomers());
			mv.addObject("pcount", adminService.countProducts());
			mv.addObject("scount", adminService.countSellers());
			mv.addObject("rcount", adminService.countRequets());
	    }else {
	      mv.setViewName("adminLogin");
	      mv.addObject("message","Login Failed");
	    }
	    return mv;
	  }
	
	@GetMapping("adminhome")
	public ModelAndView adminhome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		HttpSession session = request.getSession();
		session.setAttribute("aid",(int) session.getAttribute("aid"));
		session.setAttribute("aname",(String) session.getAttribute("aname"));
		mv.addObject("ccount", adminService.countCustomers());
		mv.addObject("pcount", adminService.countProducts());
		mv.addObject("scount", adminService.countSellers());
		mv.addObject("rcount", adminService.countRequets());
		
		return mv;
	}
	
	@GetMapping("adminViewAllCus")
	public ModelAndView adminViewAllCus(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<Customer> cdata = adminService.viewallcustomers();
		HttpSession session = request.getSession();
		session.setAttribute("aid",(int) session.getAttribute("aid"));
		session.setAttribute("aname",(String) session.getAttribute("aname"));
		mv.setViewName("adminViewAllCus");
		mv.addObject("cdata", cdata);
		return mv;
	}
	
	@GetMapping("adminCusReq")
	public ModelAndView adminCusReq(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		session.setAttribute("aid",(int) session.getAttribute("aid"));
		session.setAttribute("aname",(String) session.getAttribute("aname"));
		mv.setViewName("adminCusReq");
		mv.addObject("rdata", adminService.viewallservicereq());
		return mv;
	}
	
	 @GetMapping("setstatus")
	   public ModelAndView setstatusaction(@RequestParam("id") int eid,@RequestParam("status") String status,HttpServletRequest request) {
		   	int n = adminService.updatestatus(eid, status); 
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("adminCusReq");
		     List<Servicereq> rdata = adminService.viewallservicereq();
		     mv.addObject("rdata", rdata);
		     HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
		     if(n>0)
		     {
		       mv.addObject("message", "Status Updated Successfully..!");
		     }
		     else
		     {
		       mv.addObject("message", "Failed to Update Status..!");
		     }
		     return mv;
	   }
	 
	 @GetMapping("cusview")
	 public ModelAndView adminCustomerViewById(@RequestParam("id") int cid,HttpServletRequest request) {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("adminCustomerViewById");
		 mv.addObject("cdata", customerService.viewcustomerbyid(cid));
		 HttpSession session = request.getSession();
		session.setAttribute("aid",(int) session.getAttribute("aid"));
		session.setAttribute("aname",(String) session.getAttribute("aname"));
		 return mv;
	 }
	 
	 @GetMapping("cusdelete")
	 public ModelAndView deletecustomerbyid(@RequestParam("id") int cid,HttpServletRequest request) {
		 ModelAndView mv = new ModelAndView();
		 String msg = adminService.deletecus(cid);
		 List<Customer> cdata = adminService.viewallcustomers();
		 HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
		 mv.setViewName("adminViewAllCus");
		 mv.addObject("cdata", cdata);
		 mv.addObject("message", msg);
		 return mv;
	 }
	
	 @GetMapping("adminViewAllSell")
		public ModelAndView adminViewAllSell(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			List<Seller> sdata = adminService.viewallsellersacceptence();
			HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
			mv.setViewName("adminViewAllSell");
			mv.addObject("sdata", sdata);
			return mv;
		}
	 
	 @GetMapping("adminSelReq")
		public ModelAndView adminSelReq(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
			mv.setViewName("adminSelReq");
			mv.addObject("sdata", adminService.viewallseller());
			return mv;
		}
	 
	 @GetMapping("selsetstatus")
	   public ModelAndView selsetstatusaction(@RequestParam("id") int eid,@RequestParam("status") boolean status,HttpServletRequest request) {
		   	int n = adminService.selupdatestatus(eid, status);
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("adminSelReq");
		     List<Seller> sdata = adminService.viewallseller();
		     mv.addObject("sdata", sdata);
		     HttpSession session = request.getSession();
				session.setAttribute("aid",(int) session.getAttribute("aid"));
				session.setAttribute("aname",(String) session.getAttribute("aname"));
		     if(n>0)
		     {
		       mv.addObject("message", "Status Updated Successfully..!");
		     }
		     else
		     {
		       mv.addObject("message", "Failed to Update Status..!");
		     }
		     return mv;
	   }
	 
	 @GetMapping("adminviewproducts")
	 public ModelAndView adminviewproducts(@RequestParam(defaultValue = "1") int page,HttpServletRequest request) {
		 HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
		 
		 ModelAndView mv = new ModelAndView();
		 int itemsPerPage = 4;
		 List<Product> pdata = sellerService.viewallproduct();
		 int totalproducts = pdata.size();
	     int totalPages = (int) Math.ceil((double) totalproducts / itemsPerPage);
	     
	     int startIndex = (page - 1) * itemsPerPage;
	     int endIndex = Math.min(startIndex + itemsPerPage, totalproducts);
	     List<Product> booksSubset = pdata.subList(startIndex, endIndex);
	     
	     mv.setViewName("adminviewproducts");
	     mv.addObject("pdata", booksSubset); mv.addObject("currentPage", page);
	     mv.addObject("totalPages", totalPages);
		 return mv;
	 }
	 
	 @GetMapping("selview")
	 public ModelAndView adminSellerViewById(@RequestParam("id") int cid,HttpServletRequest request) {
		 HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("adminSellerViewById");
		 mv.addObject("cdata", adminService.viewcustomerbyid(cid));
		 return mv;
	 }
	 
	 @GetMapping("seldelete")
	 public ModelAndView deletesellerbyid(@RequestParam("id") int cid,HttpServletRequest request) {
		 HttpSession session = request.getSession();
			session.setAttribute("aid",(int) session.getAttribute("aid"));
			session.setAttribute("aname",(String) session.getAttribute("aname"));
		 ModelAndView mv = new ModelAndView();
		 String msg = adminService.deletesel(cid);
		 List<Seller> sdata = adminService.viewallsellersacceptence();
		 mv.setViewName("adminViewAllSell");
		 mv.addObject("sdata", sdata);
		 mv.addObject("message", msg);
		 return mv;
	 }

	 
}
