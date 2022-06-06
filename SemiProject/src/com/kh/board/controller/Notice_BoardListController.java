package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.Notice_BoardService;
import com.kh.board.model.vo.Notice;
import com.kh.common.PageInfo;

/**
 * Servlet implementation class NoticeListController
 */
@WebServlet("/list.no")
public class Notice_BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_BoardListController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount = new Notice_BoardService().selectListCount();
		int currentPage = Integer.parseInt(request.getParameter("kpage"));
		int pageLimit = 5;
		int boardLimit = 10;
		int maxPage = (int)(Math.ceil((double)listCount/boardLimit));
		int startPage = (currentPage-1)/pageLimit*pageLimit+1;
		int endPage = startPage+pageLimit-1;
		
		if(endPage > maxPage) {
			endPage=maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage);
		
		ArrayList<Notice> list = new Notice_BoardService().selectNoticeList(pi);
//		System.out.println(list);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/views/notice/user_noticeMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
