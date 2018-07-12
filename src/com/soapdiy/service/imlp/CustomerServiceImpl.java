package com.soapdiy.service.imlp;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.soapdiy.mapper.CustomerMapper;
import com.soapdiy.po.Customer;
import com.soapdiy.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public Customer addCustomer(String userName,String password,String email,String telephone) {
		Customer customer = new Customer();
		customer.setPassword(password);
		customer.setUsername(userName);
		customer.setTelephone(telephone);
		customer.setEmail(email);
		customerMapper.addCustomer(customer);
		return customer; 
	}

	@Override
	public Customer fineCustomerById(int c_id) {
		
		Customer customer = customerMapper.fineCustomerById(c_id);

		return customer;
	}

	@Override
	public Customer customerLogin(String userName_or_email, String password) {
		//根据用户名查询一次用户，如果为空则再根据邮箱查询一次用户
		Customer customer = new Customer();
		customer.setUsername(userName_or_email);	
		customer.setPassword(password);
		Customer customer_result = customerMapper.fineCustomerByNameAndPassword(customer);
		if(customer_result == null) {
			customer.setEmail(userName_or_email);
			customer_result = customerMapper.fineCustomerByEmailAndPassword(customer);
		}
		return customer_result;
	}

	@Override
	public void autoLogin(Customer customer,HttpServletResponse res) {
			//cookie因为保存在本地硬盘，所以不具备安全性，自动登陆只保留用户id
			String c_id = new Integer(customer.getC_id()).toString();
			Cookie customer_id = new Cookie("c_id", c_id);
			customer_id.setMaxAge(604800);
			res.addCookie(customer_id);
	}
	@Override
	public Cookie fineCookieByName(HttpServletRequest req, String cookieName) {
		Cookie cookies[] = req.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			String key = cookie.getName();
			if(key.equals(cookieName)) {
				return cookie;
			}
		}
		return null;
	}

	@Override
	public Customer fineCustomerByName(String userName) {
		return customerMapper.fineCustomerByName(userName);
	}
}
