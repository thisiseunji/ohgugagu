package com.ohgu.product.model.service;

import static com.ohgu.common.JDBCTemplate.close;
import static com.ohgu.common.JDBCTemplate.commit;
import static com.ohgu.common.JDBCTemplate.getConnection;
import static com.ohgu.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.dao.ReviewDao;
import com.ohgu.product.model.vo.Image;
import com.ohgu.product.model.vo.Review;

public class ReviewService {
	
	
	public int insertReview(Review r) {
		
		// 1. Connection 객체 생성
		Connection conn = getConnection();
		
		// 2. Dao 로 만들어진 Connection 과 전달값을 넘기면서 요청 후 결과 받기
		
		// 2_1. BOARD INSERT 먼저 진행 (부모데이터이므로)
		int result1 = new ReviewDao().insertReview(conn, r);
		
		// 3. 트랜잭션 처리
		// => 모든 DML 이 성공 이여야지만 COMMIT
		// (즉, 하나라도 실패하는 순간 바로 ROLLBACK)
		if(result1 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		// 4. Connection 반납
		close(conn);
		
		// 5. 결과 반환
		return result1;
		
	}
	
	
	
	public ArrayList<Review> selectReview(PageInfo pi, int productNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectReview(conn, pi, productNo);
		
		close(conn);
		
		return list;
	}
	
	public int selectListCount(int productNo) {
		
		Connection conn = getConnection();
		
		int result = new ReviewDao().selectListCount(conn, productNo);
		
		close(conn);
		
		return result;
	}
	
}











