package com.mybhc.dao;

import java.util.ArrayList;
//import java.util.HashMap;
import java.util.List;
//import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.vo.BhcStoreVO;

public class BhcStoreDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.store";
	
	
	
	public List<BhcStoreVO> selectSearchList(String keyword){
		return sqlSession.selectList(namespace +".searchstore");
		
		
	}
	
	public ArrayList<BhcStoreVO> searchStoreList(){
		/*
		 * Map<String,Integer> param = new HashMap<String,Integer>(); param.put("start",
		 * startCount); param.put("end", endCount);
		 */
		
		List<BhcStoreVO> list = sqlSession.selectList(namespace + ".searchstorelist");
		
		
		return (ArrayList<BhcStoreVO>)list;
	}
	
	public BhcStoreVO map(String sid) {
		return sqlSession.selectOne(namespace + ".searchmap",sid);
	}
	
	
}
