package com.kh.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.AdminService;
import com.kh.admin.model.vo.AdminNotice;
import com.kh.admin.model.vo.AdminQna;
import com.kh.admin.model.vo.AdminReservation;

/**
 * Servlet implementation class adminPageController
 */
@WebServlet("/adminPage.ad")
public class adminPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public adminPageController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<AdminNotice> list = new AdminService().selectNoticeRownum();
		ArrayList<AdminQna> list2 = new AdminService().selectQnaRownum();
		ArrayList<AdminReservation> list3 = new AdminService().selectReserveUserRownum();
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		request.getRequestDispatcher("views/common/adminMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
