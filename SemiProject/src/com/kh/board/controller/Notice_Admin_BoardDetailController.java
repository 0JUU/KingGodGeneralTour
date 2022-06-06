package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.Notice_BoardService;
import com.kh.board.model.vo.Notice;

/**
 * Servlet implementation class Notice_Admin_BoardDetailController
 */
@WebServlet("/admindetail.no")
public class Notice_Admin_BoardDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardDetailController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		Notice n = new Notice_BoardService().selectNotice(noticeNo);
		request.setAttribute("n", n);
		request.getRequestDispatcher("views/notice/admin_noticeDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
