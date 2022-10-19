package com.spring.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mybhc.vo.BhcAdminMenuVO;



public class FileServiceImpl {
	/**
	 * 영화등록 : 멀티파일 저장
	public void multiFileSave(BhcAdminMenuVO vo, HttpServletRequest request) throws Exception {
		//파일을 upload에 저장
		for(int i=0; i<vo.getFiles().length; i++) {
			CommonsMultipartFile file = vo.getFiles()[i];
			
			if(!file.getOriginalFilename().equals("")) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "\\resources\\upload\\";
				
				File upload_file = new File(path+vo.getMsfiles().get(i));
				file.transferTo(upload_file);
			}
		}//for
	}
	 */
	
	/**
	 * 영화등록 : 멀티파일 체크
	public BhcAdminMenuVO multiFileCheck(BhcAdminMenuVO vo) {
		for(CommonsMultipartFile file : vo.getFiles()) {
			if(!file.getOriginalFilename().equals("")) {
				UUID uuid = UUID.randomUUID();
				
				vo.getMfiles().add(file.getOriginalFilename());
				vo.getMsfiles().add(uuid+"_"+file.getOriginalFilename());
			}else {
				vo.getMfiles().add("");
				vo.getMsfiles().add("");
			}
		}
		vo.setMfile1(vo.getMfiles().get(0));
		vo.setMfile2(vo.getMfiles().get(1));
		vo.setMsfile1(vo.getMsfiles().get(0));
		vo.setMsfile2(vo.getMsfiles().get(1));
		
		return vo;
	}
	 */
	
	/**
	 * 공지사항 : 게시글 삭세 시 파일이 존재하면 삭제하기
	 */
	public void fileDelete(BhcAdminMenuVO vo, HttpServletRequest request) throws Exception{
		if(vo.getMsfile() != null) {
			String path=request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File old_file = new File(path+vo.getMsfile());
			if(old_file.exists()) {
				old_file.delete();
			}
		}
	}
	

	/**
	 * 공지사항 : 파일이 있는 경우 update시 파일저장
	 */
	public void update_filesave(BhcAdminMenuVO vo, HttpServletRequest request, String old_filename) 
														throws Exception {
		//새로운 파일을 upload 폴더에 저장
		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getMsfile());
			vo.getFile1().transferTo(file);
		
			//기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
	
	
	
	/**
	 * 공지사항 : 파일이 있는 경우 update시 파일체크
	 */
	public BhcAdminMenuVO update_fileCheck(BhcAdminMenuVO vo) {
		if(vo.getFile1() != null) {	//새로운 파일객체가 있는지 여부체크 하는 경우에는 null을 사용
			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
				
				UUID uuid = UUID.randomUUID();
				
				vo.setMfile(vo.getFile1().getOriginalFilename());
				vo.setMsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}
	
	
	/**
	 * 공지사항 : 파일 upload 폴더에 저장
	 */
	public void fileSave(BhcAdminMenuVO vo, HttpServletRequest request) throws Exception {

		//2. upload 폴더에 nsfile 명으로 실제 파일 업로드 처리
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getMsfile());
			vo.getFile1().transferTo(file);
		}
	}
	

	
	/**
	 * 공지사항 : 파일 체크 후 nfile, nsfile 생성
	 */
	public BhcAdminMenuVO fileCheck(BhcAdminMenuVO vo) {
		//1. vo객체의 파일체크 후 nfile, nsfile에 저장되는 이름 생성
		if(vo.getFile1().getOriginalFilename().equals("")) {
			vo.setMfile("");
			vo.setMsfile("");
		}else {
			UUID uuid = UUID.randomUUID();
			vo.setMfile(vo.getFile1().getOriginalFilename());
			vo.setMsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
		}
		
		return  vo;
	}//fileCheck
}
