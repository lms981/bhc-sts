package com.spring.service;

import java.util.List;

import com.mybhc.vo.BhcEventVO;

public interface EventService {
	int getInsertResult(BhcEventVO vo);
	List<BhcEventVO> getList();
	BhcEventVO getContent(String eid);
}
