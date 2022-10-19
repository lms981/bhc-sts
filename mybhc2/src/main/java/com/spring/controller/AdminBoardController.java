package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		
		//@GetMapping("/getSearchList")
		@ResponseBody
		private List<BhcNoticeVO> getSearchList(@RequestParam("type") String type, @RequestParam("keyword") String keyword, Model model) throws Exception{
			BhcNoticeVO vo = new BhcNoticeVO();
			vo.setType(type);
			vo.setKeyword(keyword);
			return noticeService.getSearchList(vo);
			
		}
		
		
		
}
