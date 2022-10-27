package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mybhc.vo.BhcNoticeVO;
import com.spring.service.NoticeServiceImpl;
import com.spring.service.PageServiceImpl;


@Controller
public class AdminBoardController {

	@Autowired
	private NoticeServiceImpl noticeService;
	
	@Autowired
	private PageServiceImpl pageService;
	
		@RequestMapping(value="/admin_board_product.do" , method=RequestMethod.GET)
		public String admin_board_product() {
			
			return "/admin/admin_board/admin_board_product";
		}
		
		/*
		 * 공지사항 리스트
		 */
		@RequestMapping(value="/admin_notice_list.do" , method=RequestMethod.GET)
		public ModelAndView admin_notice_list(String rpage) {
			ModelAndView mv = new ModelAndView();
			
			Map<String,Integer> param = pageService.getPageResult(rpage,"notice",noticeService);
			ArrayList<BhcNoticeVO> list = noticeService.getList(param.get("startCount"),param.get("endCount")); 
		
			
			mv.addObject("list", list);
			mv.addObject("dbCount", param.get("dbCount"));
			mv.addObject("pageSize", param.get("pageSize"));
			mv.addObject("rpage", param.get("rpage"));
			mv.setViewName("/admin/admin_board/admin_notice_list");
			return mv;
		}

			
		/*
		 * 공지사항 상세보기
		 */
		@RequestMapping(value="/admin_notice_content.do" , method=RequestMethod.GET)
		public ModelAndView admin_notice_content(String nid) {
			 ModelAndView mv = new ModelAndView();
			 BhcNoticeVO vo = noticeService.getContent(nid);
			 
			 mv.addObject("vo",vo);
			 mv.setViewName("/admin/admin_board/admin_notice_content");
			 
			return mv;
		}
		
		/*
		 * 공지사항 글쓰기화면
		 */

		@RequestMapping(value="/admin_notice_write.do" , method=RequestMethod.GET)
		public String admin_notice_write() {
			
			return "/admin/admin_board/admin_notice_write";
		}
		
		/*
		 *공지사항 글쓰기 처리 
		 */
		@RequestMapping(value="/admin_notice_write_check.do" , method=RequestMethod.POST)
		public ModelAndView admin_notice_write_check(BhcNoticeVO vo) {
			ModelAndView mv = new ModelAndView();
			int result = noticeService.getWriteResult(vo);
			
			if(result == 1) {
				mv.setViewName("redirect:/admin_notice_list.do");
			}else {
				mv.setViewName("error_page");
			}
			
			return mv;
		}
		
		/*
		 * 공지사항 수정화면
		 */
		@RequestMapping(value="/admin_notice_update.do" , method=RequestMethod.GET)
		public ModelAndView admin_notice_update(String nid) {
			ModelAndView mv = new ModelAndView();
			 BhcNoticeVO vo = noticeService.getContent(nid);
			 
			 mv.addObject("vo",vo);
			 mv.setViewName("/admin/admin_board/admin_notice_update");
			 
			return mv;
			
		}
		
		/*
		 * 공지사항 수정처리
		 */
		
		@RequestMapping(value="/admin_notice_update_check.do" , method=RequestMethod.POST)
		public ModelAndView admin_notice_update_check(BhcNoticeVO vo) {
			ModelAndView mv = new ModelAndView();
			 int result = noticeService.getUpdate(vo);
			 
			 if(result == 1) {
				 mv.setViewName("redirect:/admin_notice_list.do");
			 }else {
				 mv.setViewName("error_page");
			 }
		
			return mv;
		}
		
		/*
		 * 공지사항 삭제화면
		 */
		@RequestMapping(value="/admin_notice_delete.do" , method=RequestMethod.GET)
		public ModelAndView admin_notice_delete(String nid) {
			ModelAndView mv = new ModelAndView();
			// BhcNoticeVO vo = noticeService.getContent(nid);
			 
			 mv.addObject("nid",nid);
			 mv.setViewName("/admin/admin_board/admin_notice_delete");
			 
			return mv;
			
		}
		
		/*
		 * 공지사항 삭제처리
		 */
		@RequestMapping(value="/admin_notice_delete_check.do" , method=RequestMethod.POST)
		public ModelAndView admin_notice_delete_check(String nid) {
			ModelAndView mv = new ModelAndView();
			
			 int result = noticeService.getDelete(nid);
			 
			 if(result == 1) {
				 mv.setViewName("redirect:/admin_notice_list.do");
			 }else {
				 mv.setViewName("error_page");
			 }
			 
			return mv;
			
		}
		
		/*
		 * 검색기능
		
		@RequestMapping(value="/admin_notice_search_list.do" , method=RequestMethod.GET)
		public ModelAndView getSearchList(String rpage ,@RequestParam("searchType") String searchType, @RequestParam("keyword") String keyword) {
			ModelAndView mv = new ModelAndView();
			
			Map<String,Integer> param = pageService.getPageResult(rpage,"notice",noticeService);
			ArrayList<BhcNoticeVO> list = noticeService.getList(param.get("startCount"),param.get("endCount")); 
		
			list = noticeService.getSarchList();
			
			
			mv.addObject("list", list);
			mv.addObject("dbCount", param.get("dbCount"));
			mv.addObject("pageSize", param.get("pageSize"));
			mv.addObject("rpage", param.get("rpage"));
			mv.setViewName("/admin/admin_board/admin_notice_list");
			return mv;
		}
		 */
	/*	 
		@RequestMapping(value = "/admin_notice_search_list.do", method = RequestMethod.GET)
		public void getListPageSearch(Model model, @RequestParam("num") int num, 
		  @RequestParam("searchType") String searchType, @RequestParam("keyword") String keyword
		  ) throws Exception {

		 
		 rpage page = new rpage();
		 
		 page.setNum(num);
		 page.setpageCoCount(pageService.pageCount());  
		 
		 List<BhcNoticeVO> list = null; 
		 //list = service.listPage(page.getDisplayPost(), page.getPostNum());
		 list = pageService.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
		 
		 model.addAttribute("list", list);
		 model.addAttribute("page", page);
		 model.addAttribute("select", num);
		} 
	 */
		
		//@GetMapping("/getSearchList")
		@ResponseBody
		@RequestMapping(value="/admin_notice_list_search.do" , method = RequestMethod.GET , produces="text/plain;charset=UTF-8")
		private String getSearchList(String type , String keyword) { 
			System.out.println("dd");
			
			//gson 라이브러리를 이용하여 자바 list 객체를 JSON 객체로 변환
			JsonObject jobject = new JsonObject(); //BhcNoticeVO
			JsonArray jarray = new JsonArray();  //ArrayList
			Gson gson = new Gson();
			
			System.out.println(keyword);
			List<BhcNoticeVO> list= noticeService.getSearchList(type,keyword);
			for(BhcNoticeVO vo : list) {
				JsonObject jo = new JsonObject();
				jo.addProperty("nid", vo.getNid());
				jo.addProperty("ntitle", vo.getNtitle());
				jo.addProperty("ndate", vo.getNdate());
				jo.addProperty("nhits", vo.getNhits());
				
				jarray.add(jo);
			}
			jobject.add("list" , jarray);
			
			
			return gson.toJson(jobject);
		  }
		 
		
		
		
}
