package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.dao.BhcEventDAO;
import com.mybhc.vo.BhcEventVO;

public class EventServiceImpl implements EventService{
	@Autowired
	private BhcEventDAO eventDao;
	/*
	 * �̺�Ʈ �󼼺���
	 */
	@Override
	public BhcEventVO getContent(String eid) {
		
		return eventDao.content(eid);
	}
	
	
	/*
	 *�̺�Ʈ ��ü����Ʈ 
	 */
	@Override
	public List<BhcEventVO> getList(){
	
		return eventDao.select();
	}
	
		
	/**
	 * �̺�Ʈ ���ó��
	 */
	@Override
	public int getInsertResult(BhcEventVO vo) {
		
		return eventDao.insert(vo);
	}
}
