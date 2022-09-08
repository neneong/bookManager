package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.RentVO;

public class RentDAO {
	public RentDAO() {
		
	}
	
	public ArrayList<RentVO> getRentalList(String userId){
		ArrayList<RentVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sqlAll = "SELECT * FROM rent_book ORDER BY rent_no ASC";
		String sqlId = "SELECT * FROM rent_book WHERE member_id=? ORDER BY rent_no ASC";
		
		try {
			
		}
	}
}
