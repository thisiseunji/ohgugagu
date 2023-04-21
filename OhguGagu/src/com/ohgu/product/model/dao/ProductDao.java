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
import com.ohgu.product.model.vo.Like;
import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.vo.Product;

public class ProductDao {

	private Properties prop = new Properties();
	
	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/xml/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 상품 전체 조회
	public ArrayList<Product> selectProductList(Connection conn, PageInfo pi) {
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
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
	
	// 상품명 검색 조회
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

	public Product insertProduct(Connection conn, int productNo) {
		
		Product p = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				p = new Product(rset.getInt("PRODUCT_NO")
						   , rset.getString("CATEGORY")
						   , rset.getString("PRODUCT_NAME")
						   , rset.getInt("PRICE")
						   , rset.getString("P_COLOR")
						   , rset.getString("P_SIZE")
						   , rset.getString("P_MATERIAL")
						   , rset.getString("P_DETAIL")
						   , rset.getInt("DISCOUNT_RATE")
						   , rset.getString("FILE_NAME"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return p;

	}
	
	public int insertLike(Connection conn, Like l) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, l.getMemberNo());
			
			pstmt.setInt(2, l.getProductNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		
			JDBCTemplate.close(pstmt);
			
		}
	
		return result;
	}
	
public int selectListCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				listCount = rset.getInt("COUNT"); // 별칭으로도 데이터 뽑기 가능
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return listCount;
	}
	
}