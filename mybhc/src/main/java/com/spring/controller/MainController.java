package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value="/index.do" , method=RequestMethod.GET)
	public String home(){
			
		return "index";	
	}
	
	@RequestMapping(value="/footer.do" , method=RequestMethod.GET)
	public String footer(){
			
		return "footer";	
	}
	
	@RequestMapping(value="/header.do" , method=RequestMethod.GET)
	public String header(){
			
		return "header";	
	}
}
