package com.ohgu.address.model.service;

import static com.ohgu.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.ohgu.address.model.dao.AddressDao;
import com.ohgu.address.model.vo.Address;

public class AddressService {
	
	// 배송지 리스트 조회용 서비스
	public ArrayList<Address> selectAddressList() {
		
		Connection conn = getConnection();
		
		ArrayList<Address> list = new AddressDao().selectAddressList(conn);
		
		close(conn);
		
		return list;
	}

	// 배송지 작성용 서비스
	public int insertAddress(Address a) {
		
		Connection conn = getConnection();
		
		int result = new AddressDao().insertAddress(conn, a);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	
}
