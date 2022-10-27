package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
//import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mybhc.vo.BhcStoreVO;
//import com.spring.service.PageServiceImpl;

import com.spring.service.StoreServiceImpl;

@Controller
public class OrderController {

	
	@Autowired
	private StoreServiceImpl storeService;
	@Autowired
	//private PageServiceImpl pageService;

	
	
	
	@RequestMapping(value="/order.do" , method=RequestMethod.GET)
	public String order() {
		
		return "/order/order";
	}
	
	
	/*
	 * @RequestMapping(value="/order_searchStore.do" , method=RequestMethod.GET)
	 * public String order_searchStore() {
	 * 
	 * return "/order/order_searchStore"; }
	 */

	@RequestMapping(value="/order_searchAddress.do" , method=RequestMethod.GET)
	public String order_searchAddress() {
		
		return "/order/order_searchAddress";
	}
	
	/*
	@RequestMapping(value="/order_searchStore.do" , method=RequestMethod.GET)
	public ModelAndView admin_notice_list(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		//Map<String,Integer> param = pageService.getPageResult(rpage,"notice",storeService);
		ArrayList<BhcStoreVO> list = storeService.getSearchStoreList(); 
	
		
		mv.addObject("list", list);
		//mv.addObject("dbCount", param.get("dbCount"));
		//mv.addObject("pageSize", param.get("pageSize"));
		//mv.addObject("rpage", param.get("rpage"));
		mv.setViewName("/order/order_searchStore");
		return mv;
	}
	 
	 */
	@RequestMapping(value="/order_searchStore.do" , method=RequestMethod.GET)
	public String admin_notice_list() {
		
		return "/order/order_searchStore";
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/order_searchStore_list.do" , method = RequestMethod.GET , produces="text/plain;charset=UTF-8")
	private String getSearchList(String keyword) { 
		System.out.println("test");
		
		//gson 라이브러리를 이용하여 자바 list 객체를 JSON 객체로 변환
		JsonObject jobject = new JsonObject(); //BhcNoticeVO
		JsonArray jarray = new JsonArray();  //ArrayList
		Gson gson = new Gson();
		
		System.out.println(keyword + "검색메서드 호출");
		List<BhcStoreVO> list= storeService.getSearchList(keyword);
		for(BhcStoreVO vo : list) {
			JsonObject jo = new JsonObject();
			jo.addProperty("sid", vo.getSid());
			jo.addProperty("sname", vo.getSname());
			jo.addProperty("sadress", vo.getSadress());
			jo.addProperty("latitude", vo.getLatitude());
			jo.addProperty("longitude", vo.getLongitude());
			
			jarray.add(jo);
		}
		jobject.add("list" , jarray);
		
	
		return gson.toJson(jobject);
	  }
	
	
	@RequestMapping(value="/order_map.do" , method = RequestMethod.GET)
	private ModelAndView getSearchMap(String sid) {
		ModelAndView mv = new ModelAndView();
		 BhcStoreVO vo = storeService.getMap(sid);
		 mv.addObject("vo",vo);
		 mv.setViewName("/order/order_map");
		 
		 System.out.println(vo);
		return mv;
	}
	
}
