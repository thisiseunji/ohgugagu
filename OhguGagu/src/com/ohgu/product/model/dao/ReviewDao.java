package com.ohgu.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ohgu.common.JDBCTemplate;
import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.vo.Image;
import com.ohgu.product.model.vo.Review;


public class ReviewDao {

	private Properties prop = new Properties();

	public ReviewDao() {
		
		String fileName = ReviewDao.class.getResource("/sql/xml/review-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	public int insertReview(Connection conn, Review r) {
		
		// INSERT 문 => int (처리된 행의 갯수)
		
		// 1. 필요한 변수들 먼저 셋팅
		int result = 0;
		PreparedStatement pstmt = null;
		
		// 실행할 쿼리문
		String sql = prop.getProperty("insertReview");
		
		try {
			// 2. PreparedStatement 객체 생성
			pstmt = conn.prepareStatement(sql);
			
			// 3_1. 미완성된 쿼리문 완성시키기
			pstmt.setString(1, r.getReviewContent());
			pstmt.setString(2, r.getFileName());
			pstmt.setInt(3, r.getProductNo());

			
			// 3_2. 쿼리문 실행 후 결과 받기
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			// 4. 자원 반납 (생성 순서의 역순)
			JDBCTemplate.close(pstmt);
			
		}
		
		// 5. 결과 반환
		return result;
		
	}
	
	
	
	public int insertImage(Connection conn, Image at) {
		

		// INSERT 문	=> int (처리된 행의 갯수)
		
		// 1. 필요한 변수들 먼저 셋팅
		int result = 0;
		PreparedStatement pstmt = null;
		
		// 실행할 쿼리문
		String sql = prop.getProperty("insertImage");
		
		try {
			// 2. PreparedStatement 객체 생성
			pstmt = conn.prepareStatement(sql);
			
			// 3_1. 미완성된 쿼리문 완성시키기
			pstmt.setString(1, at.getFileName());
			
			// 3_2. 쿼리문 실행 후 결과 받기
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			// 4. 자원 반납 (생성 순서의 역순)
			JDBCTemplate.close(pstmt);
		}
		
		// 5. 결과 반환
		return result;

	}
	
	public ArrayList<Review> selectReview(Connection conn, PageInfo pi, int productNo){
		
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReview");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("REVIEW_NO")
								  , rset.getString("CONTENT")
								  , rset.getDate("CREATED_AT")
								  , rset.getString("FILE_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	public int selectListCount(Connection conn, int productNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
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
	
	
}




























