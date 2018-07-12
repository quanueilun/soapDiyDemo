package com.soapdiy.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.soapdiy.po.Customer;
import com.soapdiy.service.CustomerService;


@Controller
@RequestMapping(value="/login")
public class LoginController {
	@Autowired
	private CustomerService customerService;
	
	//跳转到登陆界面
	@RequestMapping(value="/toLogin")
	public String toLogin(HttpServletRequest req,HttpSession session) {
		//判断cookie中是否有自动登陆，如果没有则跳转登陆界面,有则登陆
		Cookie cookie = customerService.fineCookieByName(req, "c_id");
		if(cookie == null) {
			return "login";
		}else {
		Integer c_id = new Integer(cookie.getValue());
		Customer customer = customerService.fineCustomerById(c_id);
		session.setAttribute("customer", customer);
		return "index";
		}
	}
	
	//登陆
	@RequestMapping(value="/login")
	public ModelAndView login(String autoLogin,String userName_or_email,String password,HttpServletRequest req,HttpSession session,HttpServletResponse res) {
		//根据用户名和密码获取用户对象
		Customer customer = customerService.customerLogin(userName_or_email, password);
		
		ModelAndView mav = new ModelAndView();
		//如果查询用户不存在，返回登陆界面并提示错误信息；登陆成功则跳转success页面
		if(customer == null) {
			mav.setViewName("login2");
			mav.addObject("msg", "用户名或密码输入错误");
		}else {
			mav.setViewName("index");
//			如果自动登陆是勾选的，则在cookie添加用户信息
			if(autoLogin != null && autoLogin != "") {
				customerService.autoLogin(customer,res);
			}
			//在session添加用户对象，保持用户在线期间保持登陆
			session.setAttribute("customer", customer);
		}
		return mav;
	}
	
	//判断是否在线
	@RequestMapping(value="/online")
	public String online(HttpSession session) {
		//从session获取用户对象
		Customer customer = (Customer) session.getAttribute("customer");
		if(customer == null) {
			return "login";
		}
		return "index";
	}
	
	@RequestMapping(value="/exit")
	public String exit(HttpSession session,HttpServletRequest req,HttpServletResponse res) {
		//删除会话中的用户对象以及cookie中的用户id信息
		session.removeAttribute("customer");
		Cookie cookie = customerService.fineCookieByName(req, "c_id");
		if(cookie != null) {
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		}
		return "login";
	}
}
