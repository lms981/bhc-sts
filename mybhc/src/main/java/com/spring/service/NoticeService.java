package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import com.mybhc.vo.BhcNoticeVO;


public interface NoticeService {
	int getTotalCount();	//�������� ��ü �ο��
	ArrayList<BhcNoticeVO> getList(int startCount, int endCount);  //�������� ��ü ����Ʈ
	int getWriteResult(BhcNoticeVO vo);		//�������� �۾��� ó��
	BhcNoticeVO getContent(String nid);	//�������� �󼼺���
	void getUpdateHits(String nid);     //�������� ��ȸ�� ������Ʈ
	int getUpdate(BhcNoticeVO vo);		//�������� ���� ó��
	int getDelete(String nid);		//�������� ���� ó�� 
	//List<BhcNoticeVO> getSearchList(BhcNoticeVO vo) throws Exception;
	List<BhcNoticeVO> getSearchList(String type,String keyword);
}
