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
<title>공지사항 | 킹갓제너럴투어</title>
<link rel="stylesheet" href="/KGG/resources/css/user_noticeMainStyle.css">
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div id="content">
		<%@ include file="/views/common/content1_cs.jsp" %>
            <div id="content_2">
                <div id="content_2_2">공지사항</div>
                <div id="content_2_3">
                <div>
                    <table style="width: 1050px;">
                        <thead>
                            <tr>
                                <th class="text-center id" width="6%">No.</th>
                                <th class="text-center id" width="10%">구분</th>
                                <th class="text-center id" width="44%">제목</th>
                                <th class="text-center id" width="10%">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%if(list.isEmpty()) {%>
                        	<tr><td colspan="4">등록된 공지사항이 없습니다.</td></tr>
                        <%} else {%>
                        	<%for(Notice n : list) {%>
	                            <tr>
	                                <td class="text-center"><%=n.getNoticeNo() %></td>
	                                <td class="text-center"><%=n.getCaterogyName() %></td>
	                                <td class="text-center n_title"><%=n.getNoticeTitle() %></td>
	                                <td class="text-center"><%=n.getCreateDate() %></td>
	                            </tr>
                            <%} %>
                        <%} %>
                        </tbody>
                    </table>
                </div>
                </div>
                <div id="content_2_4" align="center">
                <%if(currentPage!=1) {%>
                    <button onclick="location.href='<%=contextPath%>/list.no?kpage=<%=currentPage-1%>'"><addr title="이전 페이지">&lt;</addr></button>
                <%} %>
                <%for(int i=startPage; i<endPage+1; i++) {%>
                	<%if(i != currentPage) {%>
                    	<button onclick="location.href='<%=contextPath%>/list.no?kpage=<%=i%>'"><addr title="<%=i %> 페이지"><%=i %></addr></button>
                    <%} else {%>
                    	<button disabled id="btn"><addr title="현재 페이지"><%=i %></addr></button>
                    <%} %>
                <%} %>
                <%if(currentPage != maxPage) {%>
                    <button onclick="location.href='<%=contextPath%>/list.no?kpage=<%=currentPage+1%>'"><addr title="다음 페이지">&gt;</addr></button>
                <%} %>
                </div>
                <div id="content_2_5">
<!-- 	                <form action="" method="get"> -->
<!-- 	                	<select name="f"> -->
<!-- 	                		<option value="title">제목</option> -->
<!-- 	                		<option value="content">내용</option> -->
<!-- 	                	</select> -->
<!-- 	                	<input type="search" name="search" placeholder="검색어를 입력하세요."> -->
<!-- 	                	<button type="submit">검색</button> -->
<!-- 	                </form> -->
                </div>
            </div>
       	</div>
        <div id="content_3"></div>
        <%@ include file="../common/footer.jsp" %>
        <script>
        <%if(!list.isEmpty()) {%>
        	$(function(){
        		$(".n_title").click(function(){
        			location.href = "<%=contextPath%>/detail.no?nno="+$(this).prev().prev().text();
        		});
        		$(".n_title").not("td:contains('[긴급]')").hover(function(){
	                $(this).css({"cursor":"pointer", "fontWeight":"bold"});
	                $(this).addClass("boldStyle");
	            }, function(){
	                $(this).css("fontWeight","")
	                $(this).removeClass("boldStyle");
	            });
        		$("td:contains('[긴급]')").css({"color":"rgb(152, 16, 16)", "fontWeight":"bold"});
        		$("tr:contains('[긴급]')").css("backgroundColor","rgb(240, 240, 240)");
        		$("tr:contains('[긴급]')").hover(function(){
        			$(this).css("cursor","pointer");
        		});
        		$("tbody>tr").not("tr:contains('[긴급]')").hover(function(){
        			$(this).css("color","lightblue");
        			$(this).addClass("hoverStyle");
        		}, function(){
        			$(this).css("color","");
        			$(this).removeClass("hoverStyle");
        		});
        	});
        <%}%>
        </script>
	</div>
</body>
</html>