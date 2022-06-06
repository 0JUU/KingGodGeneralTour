<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.board.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("n");
	int pn = (int)request.getAttribute("pn");
	int nn = (int)request.getAttribute("nn");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/KGG/resources/css/user_noticeDetailStyle.css">
<title><%=n.getNoticeTitle() %> | 킹갓제너럴투어</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div id="content">
		<%@ include file="/views/common/content1_cs.jsp" %>
		<div id="content_2">
			<div id="content_2_2">공지사항</div>
			<hr>
			<div id="content_2_3" style="height:45px; padding-top: 10px;">
				<table>
					<td width="84%">&nbsp;&nbsp;<b><%=n.getNoticeTitle() %></b></td>
					<td width="7%"><span><b><%=n.getCaterogyName() %></b></span></td>
					<td>&nbsp;</td>
					<td width="9%"><span><%=n.getCreateDate() %></span></td>
				</table>
			</div>
			<div id="content_2_4"><%=n.getNoticeContent() %></div>
			<div id="content_2_5">
			<%if(pn != 0) {%>
				<span onclick="location.href='<%=contextPath%>/detail.no?nno='+<%=pn%>"><addr title="이전 공지사항 보기">&lt; 이전</addr></span>
			<%} %>
				<span id="nolist" onclick="location.href='<%=contextPath%>/list.no?kpage=1'"><addr title="목록으로 가기">목록</addr></span>
			<%if(nn != 0) {%>
				<span onclick="location.href='<%=contextPath%>/detail.no?nno='+<%=nn%>"><addr title="다음 공지사항 보기">다음 &gt;</addr></span>
			<%} %>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
	<script>
	$(function(){
		$("#content_2_5 span").hover(function(){
			$(this).css({"cursor":"pointer", "color":"rgb(154, 222, 226)"});
			$(this).addClass("style");
		}, function(){
			$(this).css({"cursor":"", "color":""});
			$(this).removeClass("style");
		});
	});
	</script>
</body>
</html>