package com.mybhc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.vo.BhcEventVO;

public class BhcEventDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BhcEventVO content(String eid) {
		return sqlSession.selectOne("mapper.event.event_content", eid);
	}
	
	public List<BhcEventVO> select() {
		return sqlSession.selectList("mapper.event.event_list");
	}
	
	public int insert(BhcEventVO vo) {
		return sqlSession.insert("mapper.event.event_register", vo);		
	}
}
