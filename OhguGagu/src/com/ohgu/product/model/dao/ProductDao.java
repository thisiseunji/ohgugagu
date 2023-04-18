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
import com.ohgu.product.model.vo.Product;

public class ProductDao {

	private Properties prop = new Properties();
	
	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/product/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 상품 전체 조회
	public ArrayList<Product> selectProductList(Connection conn) {
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(rset.getInt("PRODUCT_NO")
								   , rset.getString("CATEGORY")
								   , rset.getString("PRODUCT_NAME")
								   , rset.getInt("PRICE")
								   , rset.getInt("STOCK")
								   , rset.getString("P_COLOR")
								   , rset.getString("P_SIZE")
								   , rset.getString("P_MATERIAL")
								   , rset.getString("P_DETAIL")
								   , rset.getInt("DISCOUNT_RATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Product> selectByProductName(Connection conn, String keyword) {
		
		ArrayList<Product> list = new ArrayList();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectByProductName");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(rset.getInt("PRODUCT_NO")
								   , rset.getString("CATEGORY")
								   , rset.getString("PRODUCT_NAME")
								   , rset.getInt("PRICE")
								   , rset.getInt("STOCK")
								   , rset.getString("P_COLOR")
								   , rset.getString("P_SIZE")
								   , rset.getString("P_MATERIAL")
								   , rset.getString("P_DETAIL")
								   , rset.getInt("DISCOUNT_RATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}
	
	
}