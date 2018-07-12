package com.soapdiy.util;

import javax.servlet.http.HttpSession;

import com.soapdiy.po.Customer;

public class ControllerUtil {
	public static String onlineCheck(HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			return "login";
		} 
		return null;
	}
}
