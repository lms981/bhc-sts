package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybhc.dao.BhcNoticeDAO;
import com.mybhc.vo.BhcNoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private BhcNoticeDAO noticeDao;
	
	/**
	 * 공지사항 전체 리스트
	 */
	@Override
	public ArrayList<BhcNoticeVO> getList(int startCount, int endCount){
		
		return noticeDao.select(startCount,endCount);
		
	}

	
	 @Override 
	 public int getWriteResult(BhcNoticeVO vo) { 
		 // TODO Auto-generated method stub 
		 return noticeDao.insert(vo); 
	 }//getWriteResult
	 	
	  @Override 
	  public int getTotalCount() { 
		  // TODO Auto-generated method stub

		  return noticeDao.totalCount();
		  
		  
	}//getTotalCount
	 
	  @Override 
	  public void getUpdateHits(String nid) {
		  // TODO Auto-generated method stub
		   noticeDao.updateHits(nid);
		   
		   }//getUpdateHists

	
	 @Override public BhcNoticeVO getContent(String nid) { 
		 // TODO Auto-generated method stub return null; 
		 return noticeDao.select(nid);
		 
		 }//getContent

	 
		  @Override public int getUpdate(BhcNoticeVO vo) {
			  // TODO Auto-generated method stub 
			  return noticeDao.update(vo); 
			  }
		 
		  @Override public int getDelete(String nid) { 
			  // TODO Auto-generated method stub 
			  return noticeDao.delete(nid); 
		  }
		 
			/*
			 * @Override public List<BhcNoticeVO> getSearchList(BhcNoticeVO vo) throws
			 * Exception{ return noticeDao.selectSearchList(vo); }
			 */
		  @Override 
		  public List<BhcNoticeVO> getSearchList(String type,String keyword){
			  
			  return noticeDao.selectSearchList(type,keyword);
			  
		  }
		  
		  
}

