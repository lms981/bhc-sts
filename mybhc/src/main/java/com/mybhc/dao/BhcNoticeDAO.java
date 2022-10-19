package com.mybhc.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.vo.BhcNoticeVO;



public class BhcNoticeDAO{


	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.notice";



	/**
	 * select : 전체 공지사항 리스트
	 * mapper.board.list 
	 */
	public ArrayList<BhcNoticeVO> select(int startCount, int endCount){
		//파라민터를 Map으로 정의하기
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start",startCount);
		param.put("end",endCount);

		List<BhcNoticeVO> list = sqlSession.selectList(namespace + ".list",param);

		return (ArrayList<BhcNoticeVO>)list;
	}//select


	/**
	 * insert : 게시글 등록 - mapper.board.insert
	 */

	public int insert(BhcNoticeVO vo) {
		return sqlSession.insert(namespace + ".insert",vo); 
		}//insert


	/**
	 * totalCount : 전체 로우수 출력
	 */
	public int totalCount() {
		return sqlSession.selectOne(namespace + ".totalcount");

	}//totalCount

	/**
	 * delete : 게시글 삭제
	 */
	
	  public int delete(String nid) { 
		  return sqlSession.delete(namespace + ".delete",nid);
	 
	  }
	


	/**
	 * update : 게시글 수정 
	 */
	  public int update(BhcNoticeVO vo) { 
		  return sqlSession.update(namespace + ".update",vo); 
	  }//update
	 

	/**
	 * updateHits : 조회수 업데이트
	 */

	public int updateHits(String nid) { 
		return sqlSession.update(namespace +".updatehits",nid);
	}


	/**
	 * select : 게시글 상세 보기 -mapper.board.content
	 */
	
	  public BhcNoticeVO select(String nid) { 
		  return sqlSession.selectOne(namespace +".content",nid); 
		  }
	
	  
	  /*
	   * selectList : 게시글 검색 기능 
	   */
		
		 public List<BhcNoticeVO> selectSearchList(String type,String keyword){
			 Map<String,String> param = new HashMap<String,String>();
			 param.put("type", type);
			 param.put("keyword", keyword);
		  return sqlSession.selectList(namespace +".selectSearchList",param);
		  
		  }
		 
	  
	  





} // BhcNoticeDAO
