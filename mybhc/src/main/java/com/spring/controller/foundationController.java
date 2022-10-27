package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class foundationController {
	@RequestMapping(value="/foundtion.do", method=RequestMethod.GET)
	public String foundtion(){
		
		return "foundtion/foundtion";
	}
}
