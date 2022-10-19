package com.spring.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mybhc.vo.BhcAdminMenuVO;



public class FileServiceImpl {
	/**
	 * ��ȭ��� : ��Ƽ���� ����
	public void multiFileSave(BhcAdminMenuVO vo, HttpServletRequest request) throws Exception {
		//������ upload�� ����
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
	 * ��ȭ��� : ��Ƽ���� üũ
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
	 * �������� : �Խñ� �輼 �� ������ �����ϸ� �����ϱ�
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
	 * �������� : ������ �ִ� ��� update�� ��������
	 */
	public void update_filesave(BhcAdminMenuVO vo, HttpServletRequest request, String old_filename) 
														throws Exception {
		//���ο� ������ upload ������ ����
		if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getMsfile());
			vo.getFile1().transferTo(file);
		
			//���������� �ִ� ��쿡�� ���� ����
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
	
	
	
	/**
	 * �������� : ������ �ִ� ��� update�� ����üũ
	 */
	public BhcAdminMenuVO update_fileCheck(BhcAdminMenuVO vo) {
		if(vo.getFile1() != null) {	//���ο� ���ϰ�ü�� �ִ��� ����üũ �ϴ� ��쿡�� null�� ���
			if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
				
				UUID uuid = UUID.randomUUID();
				
				vo.setMfile(vo.getFile1().getOriginalFilename());
				vo.setMsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}
	
	
	/**
	 * �������� : ���� upload ������ ����
	 */
	public void fileSave(BhcAdminMenuVO vo, HttpServletRequest request) throws Exception {

		//2. upload ������ nsfile ������ ���� ���� ���ε� ó��
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getMsfile());
			vo.getFile1().transferTo(file);
		}
	}
	

	
	/**
	 * �������� : ���� üũ �� nfile, nsfile ����
	 */
	public BhcAdminMenuVO fileCheck(BhcAdminMenuVO vo) {
		//1. vo��ü�� ����üũ �� nfile, nsfile�� ����Ǵ� �̸� ����
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
