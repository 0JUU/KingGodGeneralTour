package com.kh.admin.model.service;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.model.dao.AdminDao;
import com.kh.admin.model.vo.AdminNotice;
import com.kh.admin.model.vo.AdminQna;
import com.kh.admin.model.vo.AdminReservation;
import com.kh.admin.model.vo.Reservation;

public class AdminService {

	public ArrayList<AdminNotice> selectNoticeRownum() {
		Connection conn = getConnection();
		ArrayList<AdminNotice> list = new AdminDao().selectNoticeRownum(conn);
		close(conn);
		return list;
	}

	public ArrayList<AdminQna> selectQnaRownum() {
		Connection conn = getConnection();
		ArrayList<AdminQna> list2 = new AdminDao().selectQnaRownum(conn);
		close(conn);
		return list2;
	}

	public ArrayList<AdminReservation> selectReserveUserRownum() {
		Connection conn = getConnection();
		ArrayList<AdminReservation> list3 = new AdminDao().selectReserveUserRownum(conn);
		close(conn);
		return list3;
	}

}
