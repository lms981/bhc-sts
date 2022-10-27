package com.spring.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mybhc.vo.BhcEventVO;
import com.spring.service.EventServiceImpl;

@Controller	
public class EventController {
	
	@Autowired
	private EventServiceImpl eventService;
	
	/**
	 * event_content.do : 이벤트 상세정보
	 */
	@RequestMapping(value="/event_content.do", method=RequestMethod.GET)
	public ModelAndView event_content(String eid) {
		System.out.println("eid="+eid);
		ModelAndView mv = new ModelAndView();
		BhcEventVO vo=eventService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/event/event_content");
		
		return mv;
		
	}
	/**
	 * event_list.do : 이벤트 사용자 화면
	 */
	@RequestMapping(value="/event_list.do", method=RequestMethod.GET)
	public ModelAndView event_list() {
		ModelAndView mv = new ModelAndView();
		List<BhcEventVO> list=eventService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/event/event_list");
		
		return mv;
		
	}
	/**
	 * event_register.do : 이벤트 등록 화면
	 */
	@RequestMapping(value="/event_register.do", method=RequestMethod.GET)
	public ModelAndView event_register() {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("/event/event_register");
		
		return mv;
	
	}
	/**
	 * event_register_check.do : 이벤트 등록 처리
	 */
	@RequestMapping(value="/event_register_check.do", method=RequestMethod.POST)
	public ModelAndView event_register_check(BhcEventVO vo,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();	
		
		for(CommonsMultipartFile file:vo.getFile1()) {
			if(file.getOriginalFilename() != null){
				if(!file.getOriginalFilename().equals("")) {
					UUID uuid = UUID.randomUUID();
					
	System.out.println(file.getOriginalFilename());				
					vo.getEfiles().add(file.getOriginalFilename());
					vo.getEsfiles().add(uuid+"_"+file.getOriginalFilename());
				}else {
					vo.getEfiles().add("");
					vo.getEsfiles().add("");
				}
			}
		}
			
			vo.setEfile1(vo.getEfiles().get(0));
			vo.setEfile2(vo.getEfiles().get(1));
			vo.setEsfile1(vo.getEsfiles().get(0));
			vo.setEsfile2(vo.getEsfiles().get(1));	
			
			int result = eventService.getInsertResult(vo);
			
			if(result == 1) {								
				
					//파일을 upload에 저장
					for(int i=0; i<vo.getFile1().length; i++) {
						CommonsMultipartFile sfile = vo.getFile1()[i];
						
						if(!sfile.getOriginalFilename().equals("")) {
							String path = request.getSession().getServletContext().getRealPath("/");
							path += "\\resources\\upload\\";
							
							File upload_file = new File(path+vo.getEsfiles().get(i));
							sfile.transferTo(upload_file);
						}
					}//for
								
			}		
		
		mv.setViewName("redirect:/event_list.do");
		
		return mv;
		
	}
}
