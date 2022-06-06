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

/**
 * Servlet implementation class Notice_Admin_BoardEnrollController
 */
@WebServlet("/enrollForm.no")
public class Notice_Admin_BoardEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardEnrollController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Category> list = new Notice_BoardService().selectCategoryList();
		request.setAttribute("list", list);
//		System.out.println(list);
		request.getRequestDispatcher("views/notice/admin_noticeEnroll.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
