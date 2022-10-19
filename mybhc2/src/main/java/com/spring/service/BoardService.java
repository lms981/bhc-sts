package com.spring.service;

import java.util.ArrayList;

import com.mybhc.vo.BhcBoardVO;


public interface BoardService {
	//��ü ȸ����
	int getTotalCount();


	//ȸ�� ��ü ����Ʈ
	ArrayList<BhcBoardVO> getList(int startCount, int endCount);
	
	//�Խñ� �۾���
	int getWriteResult(BhcBoardVO vo);
	
	
	//�Խñ� �󼼺���
	BhcBoardVO getContent(String bid);
	
	//�Խñ� ��ȸ�� ������Ʈ
	void getUpdateHits(String bid);
	
	//�Խñ� ���� ó��
	int getUpdate(BhcBoardVO vo);
	
	//�Խñ� ���� ó��
	int getDelete(String bid);

}
