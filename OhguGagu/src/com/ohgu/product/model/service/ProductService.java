package com.ohgu.product.model.service;

import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.product.model.dao.ProductDao;
import com.ohgu.product.model.vo.Image;
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
	
	// 상품 필터링 조회(카테고리/재질/가격)
	public ArrayList<Product> selectProductBy(String category, int price, String pMaterial) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductBy(conn, category, price, pMaterial);
		
		close(conn);
		
		return list;
		
	}

	public Product selectProduct(int productNo) {
		
		Connection conn = getConnection();
		
		Product p = new ProductDao().selectProduct(conn, productNo);
		
		close(conn);
		
		return p;
	}

	public ArrayList<Image> selectImgs(int productNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Image> list = new ProductDao().selectImgs(conn, productNo);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Product> selectTopNProduct() {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectTopNProduct(conn);
		
		close(conn);
		
		return list;
	}

}
