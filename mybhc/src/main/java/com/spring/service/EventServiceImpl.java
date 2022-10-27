package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.dao.BhcEventDAO;
import com.mybhc.vo.BhcEventVO;

public class EventServiceImpl implements EventService{
	@Autowired
	private BhcEventDAO eventDao;
	/*
	 * 이벤트 상세보기
	 */
	@Override
	public BhcEventVO getContent(String eid) {
		
		return eventDao.content(eid);
	}
	
	
	/*
	 *이벤트 전체리스트 
	 */
	@Override
	public List<BhcEventVO> getList(){
	
		return eventDao.select();
	}
	
		
	/**
	 * 이벤트 등록처리
	 */
	@Override
	public int getInsertResult(BhcEventVO vo) {
		
		return eventDao.insert(vo);
	}
}
