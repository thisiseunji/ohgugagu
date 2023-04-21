package com.ohgu.order.model.dao;

import static com.ohgu.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ohgu.order.model.vo.Address;

public class OrderDao {
	private Properties prop = new Properties();
	
	public OrderDao() {
		
		String filename = OrderDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filename));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Address> selectAddress(Connection conn, int memberNo) {
		ArrayList<Address> addrList = new ArrayList<>();
		
		PreparedStatement pstmt = null;		
		ResultSet rset = null;

		String sql = prop.getProperty("selectAddress");

		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Address addr = new Address(
					rset.getInt("ADDRESS_NO"),
					rset.getString("ADDR"),
					rset.getString("ADDR_DETAIL"),
					rset.getString("PHONE"),
					rset.getString("RECEIVER"),
					rset.getInt("MEMBER_NO"));

				addrList.add(addr);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return addrList;

	}

}
