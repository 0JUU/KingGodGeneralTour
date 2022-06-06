<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.common.PageInfo, com.kh.board.model.vo.Notice, java.util.ArrayList"%>
<%
PageInfo pi = (PageInfo)request.getAttribute("pi");
ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
int currentPage = pi.getCurrentPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | 고객센터관리</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/KGG/resources/css/admin_noticeMainStyle.css">
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
	        <div id="notice_4">
	            <table>
	                <thead>
	                    <tr>
	                        <th width="10%">No.</th>
	                        <th width="10%">구분</th>
	                        <th width="45%">제목</th>
	                        <th width="20%">작성일</th>
	                        <th width="15%"></th>
	                    </tr>
	                </thead>
	                <tbody>
	                   <%if(list.isEmpty()) {%>
                        	<tr><td colspan="4">등록된 공지사항이 없습니다.</td></tr>
                        <%} else {%>
                        	<%for(Notice n : list) {%>
                        	<tr>
		                        <td><%=n.getNoticeNo() %></td>
		                        <td><%=n.getCaterogyName() %></td>
		                        <td class="noticeTitle"><%=n.getNoticeTitle() %></td>
		                        <td><%=n.getCreateDate() %></td>
		                        <td>
		                        	<button id="btn1" onclick="location.href='<%=contextPath%>/updateForm.no?nno=<%=n.getNoticeNo()%>'">수정</button>
		                        	<button id="btn2" onclick="if(confirm('정말로 삭제하시겠습니까?')){return location.href='<%=contextPath%>/delete.no?nno=<%=n.getNoticeNo()%>';}">삭제</button>
		                        </td>
	                    	</tr>
	                    	<%} %>
                        <%} %>
	                </tbody>
	            </table>
	        </div>
            <br>
            <div id="notice_2">
            	<button type="button" class="btn" onclick="location.href='<%=contextPath %>/enrollForm.no'" style="background-color: rgb(154, 222, 226); color:white">작성</button>
            </div>
            <div id="notice_3">
            <%if(currentPage!=1) {%>
            	<button onclick="location.href='<%=contextPath %>/adminlist.no?kpage=<%=currentPage-1%>'">&lt;</button>
            <%} %>
            <%for(int i=startPage; i<endPage+1; i++) {%>
                <%if(i != currentPage) {%>
            	<button onclick="location.href='<%=contextPath %>/adminlist.no?kpage=<%=i%>'"><%=i%></button>
            	<%} else {%>
            	<button id="btn3" disabled><%=i %></button>
            	<%} %>
            <%} %>
            <%if(currentPage != maxPage) {%>
            	<button onclick="location.href='<%=contextPath %>/adminlist.no?kpage=<%=currentPage+1%>'">&gt;</button>
            <%} %>
           	</div>
        </div>
	    <script>
	        $(function(){
	        	$(".noticeTitle").click(function(){
	        		location.href = '<%=contextPath%>/admindetail.no?nno='+$(this).prev().prev().text();
	        	});
	            $(".noticeTitle").hover(function(){
	                $(this).css({"cursor":"pointer", "fontWeight":"bold", "color":"rgb(134, 134, 134)"});
	                $(this).addClass("boldStyle");
	            }, function(){
	                $(this).css({"cursor":"", "fontWeight":"", "color":""})
	                $(this).removeClass("boldStyle");
	            });
	            $("tr").hover(function(){
	                $(this).css("backgroundColor", "rgb(240, 240, 240)");
	                $(this).addClass("backStyle");
	            }, function(){
	                $(this).css("backgroundColor", "");
	                $(this).removeClass("backStyle");
	            });
	        });
	    </script>
	</div>
</body>
</html>