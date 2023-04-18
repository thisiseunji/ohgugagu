package com.ohgu.order.model.service;

import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.order.model.dao.CartDao;
import com.ohgu.order.model.vo.Cart;

public class CartService {
	// 장바구니에 상품 추가
	public int insertCart(Cart cart) {
		Connection conn = getConnection();
		int result = new CartDao().insertCart(conn, cart);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 장바구니에서 상품 삭제
	public int deleteCart(ArrayList<Cart> cartList) {
		
		Connection conn = getConnection();
		
		int result = new CartDao().deleteCart(conn, cartList);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}