package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {

	@RequestMapping(value="/order.do" , method=RequestMethod.GET)
	public String order() {
		
		return "/order/order";
	}
	
	
	@RequestMapping(value="/order_searchStore.do" , method=RequestMethod.GET)
	public String order_searchStore() {
		
		return "/order/order_searchStore";
	}

	@RequestMapping(value="/order_searchAddress.do" , method=RequestMethod.GET)
	public String order_searchAddress() {
		
		return "/order/order_searchStore";
	}
}
