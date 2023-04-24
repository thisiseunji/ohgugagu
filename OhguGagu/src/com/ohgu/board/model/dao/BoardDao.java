package com.ohgu.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ohgu.board.model.vo.Board;
import com.ohgu.common.JDBCTemplate;
import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.notice.model.dao.NoticeDao;

public class BoardDao {
	
Properties prop = new Properties();
	
	public BoardDao() {
		String filename = NoticeDao.class.getResource("/sql/xml/board-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filename));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertBoard(Connection conn, Board b) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getBoardTitle());
			pstmt.setString(2, b.getBoardContent());
			pstmt.setInt(3, b.getMemberNo());
			pstmt.setInt(4, b.getOrderNo());
			pstmt.setInt(5, b.getProductNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int selectListCount(Connection conn, int memberNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Board> selectBoardList(Connection conn, PageInfo pi, int memberNo){
		
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBoardList");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("BOARD_NO")
								 , rset.getInt("ORDER_NO")
								 , rset.getString("BOARD_TITLE")
								 , rset.getDate("CREATED_AT")
								 , rset.getString("ANSWER")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	public Board selectBoard(Connection conn, int boardNo) {
		
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Board(rset.getInt("BOARD_NO")
							, rset.getString("BOARD_TITLE")
							, rset.getString("BOARD_CONTENT")
							, rset.getDate("CREATED_AT")
							, rset.getString("ANSWER")
							, rset.getDate("UPDATED_AT")
							, rset.getInt("MEMBER_NO")
							, rset.getInt("ORDER_NO")
							, rset.getInt("PRODUCT_NO")); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return b;
	}
	
	public int deleteBoard(Connection conn, int boardNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
	}
	
	public int adminSelectListCount(Connection conn) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adminSelectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Board> adminSelectBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adminSelectBoardList");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("BOARD_NO")
								 , rset.getString("BOARD_TITLE")
								 , rset.getString("BOARD_CONTENT")
								 , rset.getDate("CREATED_AT")
								 , rset.getString("STATUS")
								 , rset.getInt("ORDER_NO")
								 , rset.getString("MEMBER_NAME")
								 , rset.getString("PRODUCT_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	public Board selectAdminBoard(Connection conn, int boardNo) {
		
		Board b = new Board();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAdminBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Board(rset.getInt("BOARD_NO")
							, rset.getString("BOARD_TITLE")
							, rset.getString("BOARD_CONTENT")
							, rset.getDate("CREATED_AT")
							, rset.getString("ANSWER")
							, rset.getDate("UPDATED_AT")
							, rset.getString("STATUS")
							, rset.getInt("MEMBER_NO")
							, rset.getInt("ORDER_NO")
							, rset.getInt("PRODUCT_NO")
							, rset.getString("MEMBER_NAME")
							, rset.getString("PRODUCT_NAME")
							, rset.getString("FILE_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return b;
	}
	
	public int insertAnswer(Connection conn, int boardNo, String answer) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAnswer");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, answer);
			pstmt.setInt(2, boardNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	

}
