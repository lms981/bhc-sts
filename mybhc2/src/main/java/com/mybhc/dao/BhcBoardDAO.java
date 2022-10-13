package com.mybhc.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybhc.vo.BhcBoardVO;

@Repository
public class BhcBoardDAO extends DBConn{
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/**
	 * update : �Խñ� ���� 
	 */
	public int update(BhcBoardVO vo) {
		int result = 0;
		String sql = "update bhc_board set btitle=?, bcontent=?, bfile=?, bsfile=? "
				+ " where bid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			pstmt.setString(5, vo.getBid());
			
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	/**
	 * delete : �Խñ� ����
	 */
	public int delete(String bid) {
		int result = 0;
		String sql = "delete from bhc_board where bid=?";
		
		try {
			getPreparedStatement(sql);  //pstmt ��ü ����
			pstmt.setString(1, bid);
			
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * updateHits : ��ȸ�� ������Ʈ
	 */
	public int updateHits(String bid) {
		int result = 0;
		String sql = "update bhc_board set bhits=bhits+1 "
				+ " where bid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	
	
	
	
	
	/**
	 * select : �Խñ� �� ����
	 */
	public BhcBoardVO select(String bid) {
		BhcBoardVO vo = new BhcBoardVO();
		String sql = "select bid, btitle, bcontent,bhits, bdate, bfile, bsfile "
				+ " from bhc_board  where bid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBhits(rs.getInt(4));
				vo.setBdate(rs.getString(5));
				vo.setBfile(rs.getString(6));
				vo.setBsfile(rs.getString(7));
			}
			
			//close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	
	
	
	
	
	/**
	 * insert : �Խñ� ���
	 */
	public int insert(BhcBoardVO vo) {
		int result = 0;
		String sql = " insert into bhc_board "
				+ " values('b_'||sequ_bhc_board.nextval, ?, ?, ?, ?, 0, sysdate) ";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	
	/**
	 * totalCount : ��ü �ο�� ���
	 */
	public int totalCount() {
		int result = 0;
		String sql = "select count(*) from bhc_board";
		
		try {
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result = rs.getInt(1);
			}
			//close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * select : �Խñ� ��ü ����Ʈ(����¡ó��)
	 */
	
	public ArrayList<BhcBoardVO> select(int startCount, int endCount){
		//�Ķ���͸� Map���� �����ϱ�
		Map<String, Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		List<BhcBoardVO> list = sqlSession.selectList("mapper.board.list",param);
		
		
		return (ArrayList<BhcBoardVO>)list;
	}
	

}
