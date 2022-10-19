package com.mybhc.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybhc.vo.BhcMemberVO;
import com.mybhc.vo.SessionVO;


@Repository
public class BhcMemberDAO{
		
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * findId : 아이디 찾기
	 */
	public int findId() {
		return sqlSession.selectOne("mapper.member.findid");
	}
		
	/**
	 * totalCount : 전체 로우수 출력
	 */
	public int totalCount() {		
		return sqlSession.selectOne("mapper.member.total_count");
	}
		
	/**
	 * idCheck : 아이디 중복체크
	 */
	public int idCheck(String id) {	
		return sqlSession.selectOne("mapper.member.idcheck", id);
	}
		
	/**
	 * selectContent : 회원 상세 정보
	 */
	public BhcMemberVO selectContent(String id) {
		return sqlSession.selectOne("mapper.member.content", id);	
	}
		
	/**
	 * selectAll : 회원 전체 리스트
	 */
	public ArrayList<BhcMemberVO> selectAll(int startCount, int endCount){		
		//Map 타입의 객체를 생성하고 start, end라는 키이름으로 파라미터를 넘긴다.
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		List<BhcMemberVO> list = sqlSession.selectList("mapper.member.listAll", param);
			
		return (ArrayList<BhcMemberVO>)list;
	}
		
	/**
	 * select : 로그인
	 */
	public SessionVO select(BhcMemberVO vo) {
		return sqlSession.selectOne("mapper.member.login",vo);
	}	
		
		
	/**
	 * insert : 회원가입 
	 */
	public int insert(BhcMemberVO vo) {
		//sqlSession 객체의 메소드를 호출하여 실행결과를 가져옴		
		return sqlSession.insert("mapper.member.join", vo);
	}
}


