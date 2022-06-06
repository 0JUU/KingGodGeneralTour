package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.Notice_BoardService;
import com.kh.board.model.vo.Category;
import com.kh.board.model.vo.Notice;

/**
 * Servlet implementation class Notice_Admin_BoardInsertController
 */
@WebServlet("/insert.no")
public class Notice_Admin_BoardInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardInsertController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		
		Notice n = new Notice();
		n.setCategory(category);
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		
		int result = new Notice_BoardService().insertBoard(n);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "공지사항이 등록되었습니다.");
			response.sendRedirect(request.getContextPath()+"/adminlist.no?kpage=1");
		} else {
			request.setAttribute("errorMsg", "공지사항 등록에 실패하였습니다.");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
