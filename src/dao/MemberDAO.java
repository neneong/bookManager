package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MemberVO;

public class MemberDAO {
	
	public MemberDAO() {
		
	}
	
	public MemberVO getMemberData(String id) {
		MemberVO vo = null;
		Connection conn = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM lib_member WHERE member_id = ?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new MemberVO();
				vo.setMemberId(rs.getString("member_id"));
				vo.setMemberPwd(rs.getString("member_pwd"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setMemberAddr(rs.getString("member_addr"));
				vo.setMemberAge(rs.getInt("member_age"));
				
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql ERROR");
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
		
	}
	
	public boolean existID(String id) {
		boolean isExist = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM lib_member WHERE member_id = ?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isExist = true;
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql ERROR");
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return isExist;
	}
	
	public int removeMember(String id) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM lib_member WHERE member_id=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

}
