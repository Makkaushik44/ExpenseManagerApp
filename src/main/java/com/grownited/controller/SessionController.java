package com.grownited.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.grownited.bean.ForgetPasswordBean;
import com.grownited.bean.LoginBean;
import com.grownited.bean.UpdatePasswordBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.UserDao;
import com.grownited.service.EmailService;
import com.grownited.util.OtpGenerator;

@Controller
public class SessionController {
	
	@Autowired  //in autowired data add automatic in given specific column or database
	UserDao userDao; //first is class name and second is object

	@Autowired
	EmailService emailService;
	
	//jsp open
	@GetMapping("/signup")
	public String signup() {
		
		return "Signup";
		
	}
	@GetMapping("/login")
	public String login() {
		return "Login";//JSP NAME which return show page in browser
	}
	
	@GetMapping("/") // type on browser only localhost:9944 so directly this page show
	public String root() {
		return "Login";
	}
	
	
	@GetMapping("/forgetpassword") // this is url name to generate in browser( like write localhost:9944/forgetpassword )
	public String forgetPsassword() {
		return "ForgetPassword";
	}
	@GetMapping("/updatedpassword")
	public String updatedPassword() {
		return "UpdatedPassword";
		
	}
	
	  //jsp input process
	@PostMapping("/saveuser") // this is saveuser url so all data are save temporaly in bean folder under USerBean java class
	public String saveUser(UserBean user) {  //CAMEL CASE USE JAVA
		
		System.out.println(user.getFirstName());
		System.out.println(user.getLastName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());

		userDao.insertUser(user);
		return "Login";
		
		
	}
	
	@PostMapping("/authentication")//this the url
	public String authentication(LoginBean login, Model model) {
		System.out.println(login.getEmail());
		
		UserBean userBean =userDao.authenticateUser(login);
		

		// validation : true
		// db -> users -> email : password match -> loginBean:email,password
		
		if(userBean==null) {
			//invalid
			model.addAttribute("error","Invalid Credentials");
			return "Login";
			
		}else {
			
			if(userBean.getRole()==1) {
				return "redirect:/admindashboard";
			}else if(userBean.getRole()==2) {
					
					return "redirect:/home";
				}else {
					return "404";
				}
			
			
		}
		
	
	}
	@PostMapping("/sendotpforgetpassword")
	public String SendOtpForgetPassword(ForgetPasswordBean forgetPasswordBean, Model model) {
		UserBean user=userDao.findUserByEmail(forgetPasswordBean);
		
		if(user==null) {
			
			model.addAttribute("error","invalid email");
			return "ForgetPassword";
		}else {
			//otp 
			//generate otp
			//int otp = (int)(Math.random()*1000000);
			
			String otp  = OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(), otp);
			//user set --> email 
			//send mail 
			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);
			return "redirect:/updatepasswordjspopen";
		}
		
			
	
	}
	@GetMapping("/updatepasswordjspopen")
	public String updatePasswordJspOpen() {
		return "UpdatePassword";
		
	}
	
	@PostMapping("/updatemypassword")
	public String updateMyPasword(UpdatePasswordBean upBean, Model model ) {
		System.out.println(upBean.getEmail());
		System.out.println(upBean.getPassword());
		System.out.println(upBean.getOtp());
		
		//email otp password confirmpassword  - nt blank
		//password  - confirmpassword 
	     // otp == dbOtp
		//otp=db check
		UserBean user=userDao.verifyOtpByEmail(upBean);
		if(user==null) {
			model.addAttribute("error","Invalid Otp or Email");
			return "UpdatePassword";
		
		}else {
		userDao.updateMyPassword(upBean);
		return "Login";
		}
	}
	

      
}
