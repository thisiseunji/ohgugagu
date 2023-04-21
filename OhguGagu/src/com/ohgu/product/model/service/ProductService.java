package com.ohgu.product.model.service;

import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.dao.ProductDao;
import com.ohgu.product.model.vo.Product;

public class ProductService {
	
	// 상품 전체 조회
	public ArrayList<Product> selectProductList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductList(conn, pi);
		
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
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	
}
