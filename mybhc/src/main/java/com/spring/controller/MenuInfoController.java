package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MenuInfoController {

	
	
	/**
	 * admin.do : 관리자 메인페이지
	 */
	@RequestMapping(value="/menu_info.do", method=RequestMethod.GET)
	public String menu_info() {
		return "/menu/menu_info";
	}
	
}
