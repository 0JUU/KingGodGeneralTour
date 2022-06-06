package com.kh.board.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.vo.Category;
import com.kh.board.model.vo.Notice;
import com.kh.common.PageInfo;

public class Notice_BoardDao {
	private Properties prop = new Properties();
	
	public Notice_BoardDao() {
		String noticeMapper = Notice_BoardDao.class.getResource("/db/notice/notice-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(noticeMapper));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int selectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	public ArrayList<Notice> selectNoticeList(Connection conn, PageInfo pi) {
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNoticeList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1)*pi.getBoardLimit()+1;
			int endRow = pi.getCurrentPage()*pi.getBoardLimit();
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Notice(rset.getInt("BOARD_NO")
						          , rset.getString("CATEGORY_NAME")
						          , rset.getString("BOARD_TITLE")
						          , rset.getDate("CREATE_DATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public Notice selectNotice(Connection conn, int noticeNo) {
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				n = new Notice(rset.getInt("BOARD_NO")
							 , rset.getString("CATEGORY_NAME")
						     , rset.getString("BOARD_TITLE")
						     , rset.getString("BOARD_CONTENT")
							 , rset.getDate("CREATE_DATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return n;
	}

	public ArrayList<Category> selectCategoryList(Connection conn) {
		ArrayList<Category> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryList");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("CATEGORY_NO")
						            , rset.getString("CATEGORY_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertBoard(Connection conn, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(n.getCategory()));
			pstmt.setString(2, n.getNoticeTitle());
			pstmt.setString(3, n.getNoticeContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateNotice(Connection conn, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, n.getCaterogyNo());
			pstmt.setString(2, n.getNoticeTitle());
			pstmt.setString(3, n.getNoticeContent());
			pstmt.setInt(4, n.getNoticeNo());
			System.out.println(result);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteNotice(Connection conn, int noticeNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int selectPrevNotice(Connection conn, int noticeNo) {
		int pn = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPrevNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				pn = rset.getInt("PN");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return pn;
	}

	public int selectNextNotice(Connection conn, int noticeNo) {
		int nn = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNextNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				nn = rset.getInt("NN");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return nn;
	}
}
