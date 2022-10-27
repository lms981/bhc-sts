package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybhc.dao.BhcStoreDAO;
import com.mybhc.vo.BhcStoreVO;

@Service
public class StoreServiceImpl implements StoreService{
	
	@Autowired
	private BhcStoreDAO storeDao;
	
	@Override
	public List<BhcStoreVO> getSearchList(String keyword){
		
		return storeDao.selectSearchList(keyword);
	}
	
	//@Override
	public ArrayList<BhcStoreVO> getSearchStoreList(){
		return storeDao.searchStoreList();
	}
	
	@Override
	public BhcStoreVO getMap(String sid) {
		return storeDao.map(sid);
	}
	
	
}
