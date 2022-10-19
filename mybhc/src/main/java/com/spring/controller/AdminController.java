package com.spring.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mybhc.vo.BhcAdminMenuVO;
import com.spring.service.AdminMenuServiceImpl;
import com.spring.service.FileServiceImpl;
import com.spring.service.PageServiceImpl;

@Controller
public class AdminController {
	@Autowired
	private AdminMenuServiceImpl adminMenuService;
	
	@Autowired
	private PageServiceImpl  pageService;
	
	@Autowired
	private FileServiceImpl  fileService;
	
	
	
	
	/**
	 * admin_stock_in.do : ������ ����������
	 */
	/*
	 * @RequestMapping(value="/admin_stock_in.do", method=RequestMethod.GET) public
	 * ModelAndView admin_stock_in(String mid) { ModelAndView mv = new
	 * ModelAndView(); BhcAdminMenuVO vo = adminMenuService.getContent(mid);
	 * 
	 * mv.addObject("vo", vo);
	 * mv.setViewName("/admin/admin_stock/admin_stock_content");
	 * 
	 * return mv; }
	 */
	
	/**
	 * admin_stock_content: �޴� �߰�
	 */
	@RequestMapping(value="/admin_stock_content.do", method=RequestMethod.GET)
	public ModelAndView admin_stock_content(String mid) {
		 ModelAndView mv = new ModelAndView();
		 
		 BhcAdminMenuVO vo = adminMenuService.getContent(mid);
		
		 mv.addObject("vo", vo);
		 mv.setViewName("/admin/admin_stock/admin_stock_content");
		 
		 
		 return mv;
	}
	/**
	 * admin_add_check.do : �޴� �߰�
	 */
	@RequestMapping(value="/admin_add_check.do", method=RequestMethod.POST)
	public ModelAndView admin_add_check(BhcAdminMenuVO vo,HttpServletRequest request) throws Exception {
		
		 ModelAndView mv = new ModelAndView();
		 
		 vo = fileService.fileCheck(vo);
		 int result = adminMenuService.getWriteResult(vo);
		
		 if(result == 1){ 
			 fileService.fileSave(vo,request);
		 mv.setViewName("redirect:/admin.do"); 
		 }else{
		 mv.setViewName("error_page"); 
		 }
		
		
		
		return mv;
	}
	
	/**
	 * admin_add_list.do : ������ ������ ������
	 */
	@RequestMapping(value="/admin_add_list.do", method=RequestMethod.GET)
	public String admin_add_list() {
		
		return "/admin/admin_add/admin_add_list"; 
	}
	
	
	/**
	 * admin_stock_list.do : ������ ������ ������
	 */
	@RequestMapping(value="/admin_stock_list.do", method=RequestMethod.GET)
	public ModelAndView admin_stock_list(String rpage) {
		
		ModelAndView mv = new ModelAndView();
		Map<String, Integer> param = pageService.getPageResult(rpage, "adminMenu", adminMenuService);
		ArrayList<BhcAdminMenuVO> list = adminMenuService.getList(param.get("startCount"),param.get("endCount"));
		
		 
		mv.addObject("list",list);
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("rpage", param.get("rpage"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.setViewName("/admin/admin_stock/admin_stock_list"); 
		
		return mv;
	}
	
	/**
	 * admin.do : ������ ����������
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
}
