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
import com.ohgu.product.model.vo.Image;
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
								   , rset.getInt("DISCOUNT_RATE")
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
	
	// 상품 필터링 조회(카테고리/재질/가격)
	public ArrayList<Product> selectProductBy(Connection conn, String category, int price, String pMaterial) {
		
		ArrayList<Product> list = new ArrayList();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductBy");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, category);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new ~~~);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

	public Product selectProduct(Connection conn, int productNo) {

		Product p = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product();
				p.setProductNo(rset.getInt("PRODUCT_NO"));
				p.setCategory(rset.getString("CATEGORY"));
				p.setProductName(rset.getString("PRODUCT_NAME"));
				p.setPrice(rset.getInt("PRICE"));
				p.setStock(rset.getInt("STOCK"));
				p.setpColor(rset.getString("P_COLOR"));
				p.setpSize(rset.getString("P_SIZE"));
				p.setpMaterial(rset.getString("P_MATERIAL"));
				p.setpDetail(rset.getString("P_DETAIL"));
				p.setDiscountRate(rset.getInt("DISCOUNT_RATE"));
				p.setThumbnail(rset.getString("FILE_NAME"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return p;
	}

	public ArrayList<Image> selectImgs(Connection conn, int productNo) {
		ArrayList<Image> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectImgs");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Image(rset.getString("FILE_NAME")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Product> selectTopNProduct(Connection conn) {

		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTopNProduct");
		
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
								   , rset.getInt("DISCOUNT_RATE")
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
	
	
}