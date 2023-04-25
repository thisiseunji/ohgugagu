package com.ohgu.product.model.service;

import static com.ohgu.common.JDBCTemplate.close;
import static com.ohgu.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.dao.ProductDao;

import com.ohgu.product.model.vo.Image;
//import com.ohgu.product.model.vo.Like; 
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
/* DAO 수정 후 확인
	public Product insertProduct(int productNo) {
		
		Connection conn = getConnection();
		
		Product p = new ProductDao().insertProduct(conn, productNo);
		
		close(conn);
		
		return p;
	}
	
	// 좋아요	
	public int insertLike(Like l) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertLike(conn, l);
		
		close(conn);
		
		return result;
	}
*/	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	// 주문번호로 검색
	public ArrayList<Product> selectProductByOrderNo(int orderNo) {
		Connection conn = getConnection();
		
		ArrayList<Product> productList = new ProductDao().selectProductByOrderNo(conn, orderNo);
		
		close(conn);
		
		return productList;
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
