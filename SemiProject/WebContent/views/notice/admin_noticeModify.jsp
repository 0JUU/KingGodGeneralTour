<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.board.model.vo.*, java.util.ArrayList"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("clist");
	Notice n = (Notice)request.getAttribute("n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 | 고객센터관리</title>
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
	            <p><b>공지사항 수정</b></p>
	        </div>
	        <div id="notice_2">
	            <form action="<%=contextPath %>/update.no" id="tablearea" onsubmit="return confirm('공지사항을 수정하시겠습니까?')">
	                <div id="enrollTable">
	                <input type="hidden" name="nno" value="<%=n.getNoticeNo()%>">
	                    <table>
	                        <tr>
	                            <td width="15%">구분: </td>
	                            <td>
	                                <select name="category">
	                                <%for(Category c : list) {%>
	                                    <option value="<%=c.getCategoryNo()%>"><%=c.getCategoryName() %></option>
	                                    <%} %>
	                                </select>
	                                <script>
	                                	$(function(){
	                                		$("#tablearea option").each(function(){
	                                			if($(this).text() == "<%=n.getCaterogyName()%>"){
	                                				$(this).attr("selected", true);
	                                			}
	                                		});
	                                	});
	                                </script>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>제목: </td>
	                            <td>
	                                <input type="text" name="title" value="<%=n.getNoticeTitle() %>" size="77px" required>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>내용: </td>
	                            <td colspan="2">
	                                <textarea name="content" class="text" cols="80" rows="10" style="resize:none; border:1px solid rgb(180, 179, 179)"><%=n.getNoticeContent() %></textarea>
	                            </td>
	                        </tr>
	                    </table>
	                </div>
	                
	                <div id="notice_3">
	                    <button type="submit" class="btn" style="background-color: rgb(154, 222, 226); color:white">수정</button>
	                    <button onclick="history.back();" class="btn" style="background-color: rgb(234, 234, 234);">취소</button>
	                </div>
	            </form>
	        </div>
		</div>
	</div>
</body>
</html>