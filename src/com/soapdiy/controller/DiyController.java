package com.soapdiy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soapdiy.po.Customer;
import com.soapdiy.service.imlp.DiyServiceImpl;
import com.soapdiy.util.ControllerUtil;

@Controller
@RequestMapping(value = "/diy")
public class DiyController {
	@Autowired
	private DiyServiceImpl diyService;
	
	@RequestMapping(value = "/toDiy")
	public String toDiy(HttpSession session) {
		String result = ControllerUtil.onlineCheck(session);
		if(result == null) {
			result = "diy";
		}
		return result;
	}
}
