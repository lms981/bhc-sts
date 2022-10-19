package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mybhc.dao.BhcBoardDAO;
import com.mybhc.vo.BhcBoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BhcBoardDAO boardDao;
	
	
	/*
	 * �Խñ� ���� ó��
	 */
	@Override
	public int getDelete(String bid) {
		return boardDao.delete(bid);
	}
	
	/*
	 * �Խñ� ���� ó��
	 */
//	@Override
	public int getUpdate(BhcBoardVO vo) {
		return boardDao.update(vo);
	}
	
	/*
	 * �Խñ� ��ȸ�� ������Ʈ
	 */
	@Override
	public void getUpdateHits(String bid) {
		boardDao.updateHits(bid);
	}
	
	
	/*
	 * �Խñ� �۾���
	 */
	@Override
	public int getWriteResult(BhcBoardVO vo) {
		return boardDao.insert(vo);
	}
	
	
	/*
	 * �Խñ� �󼼺���
	 */
	@Override
	public BhcBoardVO getContent(String bid) {
		return boardDao.select(bid);
	}
	
	
	
	
	/*
	 * �Խñ� ��ü �ο�
     */
	@Override
	public int getTotalCount() {
		return boardDao.totalCount();

}
	
	/*
	 * �Խñ� ��ü ����Ʈ 
	 */
	@Override
	public ArrayList<BhcBoardVO> getList(int startCount, int endCount){

		ArrayList<BhcBoardVO> list = boardDao.select(startCount, endCount);

		return list;
	}


}
