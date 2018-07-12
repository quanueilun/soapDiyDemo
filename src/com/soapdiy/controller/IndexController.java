package com.soapdiy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/index")
public class IndexController {
	@RequestMapping(value="/toIndex")
	public String toIndex() {
		return "index";
	}
	@RequestMapping(value="/toTest")
	public String toTest() {
		return "test";
	}
}
