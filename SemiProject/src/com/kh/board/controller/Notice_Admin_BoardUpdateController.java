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
 * Servlet implementation class Notice_Admin_BoardUpdateController
 */
@WebServlet("/update.no")
public class Notice_Admin_BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Notice_Admin_BoardUpdateController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		int categoryNo = Integer.parseInt(request.getParameter("category"));
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		System.out.println(categoryNo);
		Notice n = new Notice();
		n.setNoticeNo(noticeNo);
		n.setCaterogyNo(categoryNo);
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		
		int result = new Notice_BoardService().updateNotice(n);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "공지사항이 수정되었습니다.");
			response.sendRedirect(request.getContextPath()+"/admindetail.no?nno="+noticeNo);
		} else {
			request.setAttribute("errorMsg", "공지사항 수정에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
