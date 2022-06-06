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
	//예약조회 시작
		public ArrayList<Reservation> reservationChk(int reservtionCheck) {
			Connection conn = getConnection();
			
			ArrayList<Reservation> list = new AdminDao().reservationChk(conn,reservtionCheck);

			close(conn);
			
			return list;
		}
		//예약조회 끝	

		//예약취소 시작
		public int deleteReservation(int bookingNo) {
			Connection conn = getConnection();
			
			int result = new AdminDao().deleteReservation(conn,bookingNo);
			
			if(result>0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}
		//예약취소 끝

		//예약변경 시작
		public int changeReservation(int bookingNo, String depCity, String flightNo,
				String depDate, String arrivalCity, String arrivalDate) {
			Connection conn = getConnection();
			
			int result = new AdminDao().changeReservation(conn,bookingNo,depCity,flightNo,depDate,arrivalCity,arrivalDate);
			
			if(result>0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}
		//예약 변경 끝
}
