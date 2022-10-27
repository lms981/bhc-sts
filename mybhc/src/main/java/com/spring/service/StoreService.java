package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import com.mybhc.vo.BhcStoreVO;

public interface StoreService {
	List<BhcStoreVO> getSearchList(String keyword);
	ArrayList<BhcStoreVO> getSearchStoreList();
	BhcStoreVO getMap(String sid);
	
}
