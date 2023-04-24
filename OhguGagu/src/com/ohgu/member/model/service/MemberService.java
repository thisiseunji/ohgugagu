package com.ohgu.member.model.service;

import java.sql.Connection;

import com.ohgu.common.JDBCTemplate;
import com.ohgu.member.model.dao.MemberDao;
import com.ohgu.member.model.vo.Member;

public class MemberService {
	
	// 로그인기능
	public Member loginMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		Member loginUser = new MemberDao().loginMember(conn, m);
		JDBCTemplate.close(conn);
		return loginUser;
		
	}
	
	// 회원가입기능
	public int insertMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	// 회원탈퇴 기능
	public int deleteMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().deleteMember(conn, m);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	public int idCheck(String checkId) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().idCheck(conn, checkId);
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

}
