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
	
	// 넘어온 모든 카트 리스트의 요소를 삭제
	public int deleteCart(Connection conn, ArrayList<Cart> cartList) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			for (Cart cart : cartList) {
				pstmt.setInt(1, cart.getMemberNo());
				pstmt.setInt(2, cart.getProductNo());
				result *= pstmt.executeUpdate();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}
	
}
