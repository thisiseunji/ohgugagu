package com.ohgu.order.model.service;

import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;

import com.ohgu.order.model.dao.CartDao;
import com.ohgu.order.model.vo.Cart;

public class CartService {
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
}
