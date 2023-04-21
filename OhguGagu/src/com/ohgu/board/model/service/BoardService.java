package com.ohgu.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.board.model.dao.BoardDao;
import com.ohgu.board.model.vo.Board;
import com.ohgu.common.JDBCTemplate;
import com.ohgu.common.model.vo.PageInfo;

public class BoardService {
	
	public int insertBoard(Board b) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().insertBoard(conn, b);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}
	
	public int selectListCount(int memberNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().selectListCount(conn, memberNo);
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	public ArrayList<Board> selectBoardList(PageInfo pi, int memberNo){
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBoardList(conn, pi, memberNo);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	public Board selectBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Board b = new BoardDao().selectBoard(conn, boardNo);
		
		JDBCTemplate.close(conn);
		
		return b;
	}
	
	public int deleteBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteBoard(conn, boardNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	public int adminSelectListCount() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().adminSelectListCount(conn);
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	public ArrayList<Board> adminSelectBoardList(PageInfo pi){
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Board> list = new BoardDao().adminSelectBoardList(conn, pi);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	public Board selectAdminBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Board b = new BoardDao().selectAdminBoard(conn, boardNo);
		
		JDBCTemplate.close(conn);
		
		return b;
	}
	
	public int insertAnswer(int boardNo, String answer) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().insertAnswer(conn, boardNo, answer);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}


}
