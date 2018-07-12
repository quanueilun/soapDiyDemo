package com.soapdiy.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.URIDereferencer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import com.soapdiy.po.Customer;
import com.soapdiy.service.CustomerService;

@Controller
@RequestMapping(value="/sign")
public class SignController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping(value="/toSign")
	public String toSign() {
		return "sign";
	}
	
	//需要在页面设置userName,password,telephone,email
	@RequestMapping(value="/sign")
	public ModelAndView sign(String email,String userName,String password,String telephone,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Customer customer;
		try {
			customer = customerService.addCustomer(userName, password, email, telephone);
		} catch (Exception e) {
			mav.addObject("msg", "注册失败");
			mav.setViewName("sign");
			return mav;
		}
		session.setAttribute("customer", customer);
		mav.setViewName("login");
		
		return mav;
	}
	@RequestMapping(value="/checkUserName/{userName}")
	public @ResponseBody Customer checkUserName(@PathVariable("userName")String userName,HttpServletRequest req,HttpServletResponse res){
		try {
			userName = URLDecoder.decode(userName, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Customer customer = customerService.fineCustomerByName(userName);
		System.out.println(userName);
		return customer;
		}
}
