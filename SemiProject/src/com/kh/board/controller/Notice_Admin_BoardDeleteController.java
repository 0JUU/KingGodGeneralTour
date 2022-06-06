package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.Notice_BoardService;

/**
 * Servlet implementation class Notice_Admin_BoardDeleteController
 */
@WebServlet("/delete.no")
public class Notice_Admin_BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardDeleteController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		int result = new Notice_BoardService().deleteNotice(noticeNo);
		if(result > 0) {
			response.sendRedirect(request.getContextPath()+"/adminlist.no?kpage=1");
		} else {
			request.setAttribute("errorMsg", "공지사항 삭제에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
