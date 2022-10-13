package com.spring.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.mybhc.vo.BhcBoardVO;

public class FileServiceImpl {
	/*
	 * 영화등록 : 멀티파일 저장 
	 */
	
	/*
	public void multiFileSave(BhcMovieVO vo, HttpServletRequest request) throws Exception{
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
	
	
	/*
	 * 영화등록: 멀티파일 체크 
	 */
	
	/*
	public CgvMovieVO multiFileCheck(CgvMovieVO vo) {
		
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
		vo.setMfile(vo.getMfiles().get(0));
		vo.setMfile2(vo.getMfiles().get(1));
		vo.setMsfile(vo.getMsfiles().get(0));
		vo.setMsfile2(vo.getMsfiles().get(1));

		return vo;
	}
	
	
	/*
	 *  공지사항:게시글 삭제 시 파일이 존재하면 삭제하기
	 */
	
	/*
	public void fileDelete(BhcNoticeVO vo,HttpServletRequest request)throws Exception{
		if(vo.getNsfile() != null) {
			String path=request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path+vo.getNsfile());
			if(old_file.exists()) {
				old_file.delete();
			}
		}
		
	}
	*/
	
	/*
	 *  게시판: 게시글 삭제 시 파일이 존재하면 삭제하기
	 */
	public void fileDelete(BhcBoardVO vo,HttpServletRequest request)throws Exception{
		if(vo.getBsfile() != null) {
			String path=request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path+vo.getBsfile());
			if(old_file.exists()) {
				old_file.delete();
			}
		}
		
	}
	
	
	/*
	 * 파일이 있는 경우 update시 파일저장 
	 */
	
	/*
	public void update_filesave(CgvNoticeVO vo, HttpServletRequest request, String old_filename) throws Exception {
		
		//새로운 파일을 upload 폴더에 저장
		//새로운 파일선택x,기존 파일
		if(!vo.getFile1().getOriginalFilename().equals("")) { 
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getNsfile());
			vo.getFile1().transferTo(file);

			//기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}

	}
	
	
	
	/*
	 * 파일이 있는 경우 update시 파일저장 
	 */
	public void update_filesave(BhcBoardVO vo, HttpServletRequest request, String old_filename) throws Exception {
		
		//새로운 파일을 upload 폴더에 저장
		//새로운 파일선택x,기존 파일
		if(!vo.getFile1().getOriginalFilename().equals("")) { 
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getBsfile());
			vo.getFile1().transferTo(file);

			//기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}

	}
	
	
	/*
	 * 공지사항 :파일이 있는 경우 update시 파일체크 
	 */
	/*
	public CgvNoticeVO update_fileCheck(CgvNoticeVO vo) {
		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택x,기존 파일
			
			UUID uuid = UUID.randomUUID();

			vo.setNfile(vo.getFile1().getOriginalFilename());
			vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());

		}
        return vo;
	}
	
	
	/*
	 * 게시판 :파일이 있는 경우 update시 파일체크 
	 */
	public BhcBoardVO update_fileCheck(BhcBoardVO vo) {
		if(vo.getFile1() != null) {
		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택x,기존 파일
			
			UUID uuid = UUID.randomUUID();

			vo.setBfile(vo.getFile1().getOriginalFilename());
			vo.setBsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
		}
		}
        return vo;
	}
	
	
	
	
	/*
	 * 공지사항 : 파일 upload 폴더에 저장 
	 */
	
	/*
	public void fileSave(CgvNoticeVO vo, HttpServletRequest request) throws Exception {
		 //2.upload 폴더에 bsfile 명으로 실제 파일 업로드 처리
			if(!vo.getFile1().getOriginalFilename().equals("")) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "\\resources\\upload\\";

				File file = new File(path+vo.getNsfile());
				vo.getFile1().transferTo(file);
			}
	}
	
	
	
	
	
	/*
	 * 게시판 :파일 upload 폴더에 저장 
	 */
	public void fileSave(BhcBoardVO vo, HttpServletRequest request) throws Exception {
		 //2.upload 폴더에 bsfile 명으로 실제 파일 업로드 처리
			if(!vo.getFile1().getOriginalFilename().equals("")) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "\\resources\\upload\\";

				File file = new File(path+vo.getBsfile());
				vo.getFile1().transferTo(file);
			}
	}
	
	
	

	
	
	/*
	 * 게시판 : 파일 체크 후 bfile ,bsfile 생성
	 */
	public BhcBoardVO fileCheck(BhcBoardVO vo) {
		//1.파일체크 후 bfile,bsfile에 저장되는 이름 생성
		if(vo.getFile1().getOriginalFilename().equals("")) {
			vo.setBfile("");
			vo.setBsfile("");
		}else {

			UUID uuid = UUID.randomUUID();
		    vo.setBfile(vo.getFile1().getOriginalFilename());
			vo.setBsfile(uuid+"_"+vo.getFile1().getOriginalFilename());			
		}
		return vo;
	}//fileCheck
	
}
