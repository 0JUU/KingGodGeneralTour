<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.board.model.vo.Category"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록 | 고객센터관리</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/KGG/resources/css/admin_noticeEnrollStyle.css">
</head>
<body>
	<%@ include file="../common/admin/admin.jsp" %>
		<div id="content_2">
	        <div id="customer">
	            <p><b>고객센터관리</b></p>
	        </div>
	        <div id="notice_1">
	            <p><b>공지사항 등록</b></p>
	        </div>
	        <div id="notice_2">
	            <form action="<%=contextPath %>/insert.no" id="tablearea" method="post" onsubmit="return confirm('공지사항을 등록하시겠습니까?')">
	                <div id="enrollTable">
	                    <table>
	                        <tr>
	                            <td width="12%">구분: </td>
	                            <td>
	                                <select name="category">
	                                <%for(Category c : list) {%>
	                                    <option value="<%=c.getCategoryNo()%>"><%=c.getCategoryName() %></option>
	                                <%} %>
	                                </select>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>제목: </td>
	                            <td>
	                                <input type="text" name="title" size="78px" required>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>내용: </td>
	                            <td colspan="2">
	                                <textarea name="content" class="text" rows="10" cols="100" style="width: 100%; resize:none;" required></textarea>
	                            </td>
	                        </tr>
	                    </table>
	                </div>
	                <div id="notice_3">
	                    <button type="submit" class="btn" style="background-color: rgb(154, 222, 226); color:white">등록</button>
	                    <button onclick="history.back();" class="btn" style="background-color: rgb(234, 234, 234);">취소</button>
	                </div>
	            </form>
	        </div>
		</div>
	</div>
</body>
</html>