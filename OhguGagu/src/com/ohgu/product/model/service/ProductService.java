package com.ohgu.product.model.service;

import static com.ohgu.common.JDBCTemplate.close;
import static com.ohgu.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.product.model.dao.ProductDao;
import com.ohgu.product.model.vo.Like;
import com.ohgu.product.model.vo.Product;

public class ProductService {
	
	// 상품 전체 조회
	public ArrayList<Product> selectProductList() {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductList(conn);
		
		close(conn);
		
		return list;
	}
	
	// 상품명으로 상품 검색
	public ArrayList<Product> selectByProductName(String keyword) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectByProductName(conn, keyword);
		
		close(conn);
		
		return list;
	}
	
	public Product insertProduct(int productNo) {
		
		Connection conn = getConnection();
		
		Product p = new ProductDao().insertProduct(conn, productNo);
		
		close(conn);
		
		return p;
	}
	
	public int insertLike(Like l) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertLike(conn, l);
		
		close(conn);
		
		return result;
	}
	
	
	/*
	// 상품 필터링 조회(카테고리/재질/가격)
	public ArrayList<Product> selectProductBy(String category, int price, String pMaterial) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductBy(conn, category, price, pMaterial);
		
		close(conn);
		
		return list;
		
	}*/

}
