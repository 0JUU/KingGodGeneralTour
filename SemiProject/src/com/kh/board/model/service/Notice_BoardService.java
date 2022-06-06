package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.Notice_BoardDao;
import com.kh.board.model.vo.Category;
import com.kh.board.model.vo.Notice;
import com.kh.common.PageInfo;

public class Notice_BoardService {
	// 게시글 수 조회
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new Notice_BoardDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	// 게시글 목록 조회
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Notice> list = new Notice_BoardDao().selectNoticeList(conn, pi);
		close(conn);
		return list;
	}
	// 게시글 상세
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		Notice n = new Notice_BoardDao().selectNotice(conn, noticeNo);
		close(conn);
		return n;
	}
	// 게시글 수정
	public int updateNotice(Notice n) {
		Connection conn = getConnection();
		int result = new Notice_BoardDao().updateNotice(conn, n);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}
	public ArrayList<Category> selectCategoryList() {
		Connection conn = getConnection();
		ArrayList<Category> list = new Notice_BoardDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	public int insertBoard(Notice n) {
		Connection conn = getConnection();
		int result = new Notice_BoardDao().insertBoard(conn, n);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}
	public int deleteNotice(int noticeNo) {
		Connection conn = getConnection();
		int result = new Notice_BoardDao().deleteNotice(conn, noticeNo);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	public int selectPrevNotice(int noticeNo) {
		Connection conn = getConnection();
		int pn = new Notice_BoardDao().selectPrevNotice(conn,noticeNo);
		if(pn > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return pn;
	}
	public int selectNextNotice(int noticeNo) {
		Connection conn = getConnection();
		int nn = new Notice_BoardDao().selectNextNotice(conn,noticeNo);
		if(nn > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return nn;
	}


	
}
