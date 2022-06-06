<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.board.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("n");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=n.getNoticeTitle() %> | 공지사항 조회 - 고객센터관리</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/KGG/resources/css/admin_noticeDetailStyle.css">
</head>
<body>
	<%@ include file="../common/admin/admin.jsp" %>
		<div id="content_2">
	        <div id="customer">
	            <p><b>고객센터관리</b></p>
	        </div>
	        <div id="notice_1">
	            <p><b>공지사항</b></p>
	        </div>
            <div id="notice_2">
                <table>
                    <tr>
                        <td class="notice_2_th">구분</td>
                        <td colspan="2"><%=n.getCaterogyName() %></td>
                        <td class="notice_2_th">작성일</td>
                        <td><%=n.getCreateDate() %></td>
                    </tr>
                    <tr>
                        <td class="notice_2_th">제목</td>
                        <td colspan="5"><%=n.getNoticeTitle() %></td>
                    </tr>
                    <tr>
                    	<td class="notice_2_th">내용</td>
                    	<td colspan="5"><%=n.getNoticeContent() %></td>
                    </tr>
                </table>
            </div>
            <div id="notice_3">
                <button id="btn1" class="btn" style="background-color: rgb(234, 234, 234);">목록</button>
                <button id="btn2" class="btn" style="background-color: rgb(154, 222, 226); color:white">수정</button>
                <button id="btn3" class="btn" style="background-color: rgb(64, 64, 64); color: white;">삭제</button>
            </div>
		</div>
		<script>
			$(function(){
				$("#btn1").click(function(){
					location.href='<%=contextPath %>/adminlist.no?kpage=1'
				});
				$('#btn2').click(function(){
					location.href='<%=contextPath %>/updateForm.no?nno=<%=n.getNoticeNo()%>'
				});
				$("#btn3").click(function(){
					if(confirm('정말로 삭제하시겠습니까?')){
						return location.href='<%=contextPath%>/delete.no?nno=<%=n.getNoticeNo()%>';
					}
				});
			});
		</script>
	</div>
</body>
</html>