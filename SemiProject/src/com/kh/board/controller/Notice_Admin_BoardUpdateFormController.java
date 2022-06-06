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
 * Servlet implementation class Notice_Admin_BoardUpdateFormController
 */
@WebServlet("/updateForm.no")
public class Notice_Admin_BoardUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardUpdateFormController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Notice_BoardService bs = new Notice_BoardService();
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		ArrayList<Category> clist = bs.selectCategoryList();
		Notice n = bs.selectNotice(noticeNo);
		request.setAttribute("clist", clist);
		request.setAttribute("n", n);
		request.getRequestDispatcher("views/notice/admin_noticeModify.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
