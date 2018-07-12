package com.soapdiy.service;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soapdiy.po.Customer;

public interface CustomerService {

	public Customer addCustomer(String userName,String password,String email,String telephone);
	
	public Customer fineCustomerById(int c_id);
	
	public Customer customerLogin(String userName,String password);
	
	public Customer fineCustomerByName(String userName);

	public void autoLogin(Customer customer,HttpServletResponse res);
	
	public Cookie fineCookieByName(HttpServletRequest req,String cookieName);

}
