package com.kh.admin.model.dao;
import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.model.vo.AdminNotice;
import com.kh.admin.model.vo.AdminQna;
import com.kh.admin.model.vo.AdminReservation;
import com.kh.admin.model.vo.Reservation;

public class AdminDao {
	private Properties prop = new Properties();
	
	public AdminDao() {
		String adminMainFile = AdminDao.class.getResource("/db/admin/admin_main-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(adminMainFile));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AdminNotice> selectNoticeRownum(Connection conn) {
		ArrayList<AdminNotice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNoticeRownum");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new AdminNotice(rset.getInt("BOARD_NO")
						 			   , rset.getString("CATEGORY_NAME")
						               , rset.getString("BOARD_TITLE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<AdminQna> selectQnaRownum(Connection conn) {
		ArrayList<AdminQna> list2 = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQnaRownum");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list2.add(new AdminQna(rset.getInt("RNUM")
						             , rset.getString("BOARD_TITLE")
						             , rset.getString("ANSWER_STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list2;
	}

	public ArrayList<AdminReservation> selectReserveUserRownum(Connection conn) {
		ArrayList<AdminReservation> list3 = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReserveUserRownum");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list3.add(new AdminReservation(rset.getInt("ENROLL_NO")
											 , rset.getString("USER_NAME")
						                     , rset.getString("INT_DOM_ID")
						                     , rset.getInt("BOOKING_NO")
						                     , rset.getDate("RESERVATION_DATE")
						                     , rset.getString("FLIGHT_NO")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list3;
	}	
}
