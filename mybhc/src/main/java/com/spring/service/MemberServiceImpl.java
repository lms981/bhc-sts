package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.mybhc.dao.BhcMemberDAO;
import com.mybhc.vo.BhcMemberVO;
import com.mybhc.vo.SessionVO;

public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private BhcMemberDAO memberDao;
	
	/**
	 * ���̵� �ߺ� üũ
	 */
	public int getIdCheck(String id) {
		return memberDao.idCheck(id);
	}
	
	/**
	 * ȸ�� �� ����
	 */
	@Override
	public BhcMemberVO getMemberContent(String id) {
		return memberDao.selectContent(id);
	}
	
	/**
	 * ȸ�� ��ü��
	 */
	@Override
	public int getTotalCount() {
		return memberDao.totalCount();
	}
	
	/**
	 * ȸ�� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<BhcMemberVO> getMemberList(int startCount, int endCount){	
		ArrayList<BhcMemberVO> list = memberDao.selectAll(startCount, endCount);
		
		return list;
	}
	
	/** 
	 * ȸ������ ó��
	 */
	@Override
	public int getJoinResult(BhcMemberVO vo) {	
		return memberDao.insert(vo);
	}
	
	
	/**
	 * �α��� ó��
	 */
	@Override
	public SessionVO getLoginResult(BhcMemberVO vo) {	
		return memberDao.select(vo);		
	}
}
