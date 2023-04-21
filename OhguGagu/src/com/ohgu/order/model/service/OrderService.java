package com.ohgu.order.model.service;


import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import com.ohgu.order.model.dao.OrderDao;
import com.ohgu.common.model.vo.Order;
import com.ohgu.order.model.vo.Address;

public class OrderService {

	public ArrayList<Address> selectAddress(int memberNo) {
		Connection conn = getConnection();
		
		ArrayList<Address> addrList = new OrderDao().selectAddress(conn, memberNo);
		
		close(conn);
		
		return addrList;
	}

}
