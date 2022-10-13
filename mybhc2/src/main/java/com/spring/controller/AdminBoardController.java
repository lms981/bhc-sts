package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminBoardController {

		@RequestMapping(value="/admin_board_product.do" , method=RequestMethod.GET)
		public String admin_board_product() {
			
			return "/admin_board/admin_board_product";
		}
}
