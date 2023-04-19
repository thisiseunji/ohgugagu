package com.ohgu.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ohgu.order.model.vo.Cart;

public class CartDao {
	
	private Properties prop = new Properties();
	
	public CartDao() {
		String filename = CartDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filename));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertCart(Connection conn, Cart cart){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart.getAmount());
			pstmt.setInt(2, cart.getMemberNo());
			pstmt.setInt(3, cart.getProductNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}
	
	// 넘어온 카트를 삭제
	public int deleteCart(Connection conn, Cart cart) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, cart.getMemberNo());
			pstmt.setInt(2, cart.getProductNo());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public int updateCart(Connection conn, Cart cart) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 수량이 현재 수량에 누적되도록
			pstmt.setInt(1, cart.getMemberNo());
			pstmt.setInt(2, cart.getProductNo());
			pstmt.setInt(3, cart.getAmount());
			pstmt.setInt(4, cart.getMemberNo());
			pstmt.setInt(5, cart.getProductNo());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	
}
