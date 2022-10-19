package com.spring.service;

import java.util.ArrayList;

import com.mybhc.vo.BhcMemberVO;
import com.mybhc.vo.SessionVO;

public interface MemberService {	
	SessionVO getLoginResult(BhcMemberVO vo);  //�α��� ó�� �޼ҵ�
	int getJoinResult(BhcMemberVO vo);	 //ȸ������ ó�� �޼ҵ�
	int getTotalCount();	//��ü ȸ���� 
	ArrayList<BhcMemberVO> getMemberList(int startCount, int endCount);  //ȸ�� ��ü ����Ʈ
	BhcMemberVO getMemberContent(String id);	//ȸ�� ������
	
}
