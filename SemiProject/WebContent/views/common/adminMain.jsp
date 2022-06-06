<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList,com.kh.admin.model.vo.AdminNotice,com.kh.admin.model.vo.AdminQna,com.kh.admin.model.vo.AdminReservation"%>
<%
	ArrayList<AdminNotice> list = (ArrayList<AdminNotice>)request.getAttribute("list");
	ArrayList<AdminQna> list2 = (ArrayList<AdminQna>)request.getAttribute("list2");
	ArrayList<AdminReservation> list3 = (ArrayList<AdminReservation>)request.getAttribute("list3");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 | 관리자페이지</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/KGG/resources/css/admin_mainStyle.css">
</head>
<body>
	<%@ include file="../common/admin/admin.jsp"%>
		<div id="content_2">
			<!-- 세계시간 영역 -->
			<div id="case_area">
				<div class="summary">
					<!-- 대한민국(KST) -->
					<div class="sum_icon">
						<img src="/KGG/resources/images/ad-korea.png" id="sum_icon1">
					</div>
					<div>
						<span><%@include file="../common/timeKorea.jsp"%></span>
						<div><%@include file="../common/dateKorea.jsp"%></div>
					</div>
				</div>
				<div class="summary">
					<!-- 미국(EDT) -->
					<div class="sum_icon">
						<img src="/KGG/resources/images/ad-america.png" id="sum_icon2">
					</div>
					<div>
						<span><%@include file="../common/timeNy.jsp"%></span>
						<div><%@include file="../common/dateNy.jsp"%></div>
					</div>
				</div>
				<div class="summary">
					<!-- 유럽(CET) -->
					<div class="sum_icon">
						<img src="/KGG/resources/images/ad-france.png" id="sum_icon3">
					</div>
					<div>
						<span><%@include file="../common/timeParis.jsp"%></span>
						<div><%@include file="../common/dateParis.jsp"%></div>
					</div>
				</div>
			</div>
			<!-- 간편메뉴 영역 -->
			<!-- 공지사항, QnA / 기간별 예약건수 / 예약회원관리 -->
			<div id="easy_menu1">
				<!-- 공지사항, QnA -->
				<div class="tab_gra">
					<!-- 공지사항 -->
					<div class="tab_gra_1">
						<div class="tab_gra_title">
							<a href="<%=contextPath%>/adminlist.no?kpage=1"><addr title="공지사항으로 가기">공지사항 &gt;</addr></a>
						</div>
						<br>
						<div class="container">
							<table class="table table-sm">
								<thead>
									<tr>
										<th width="20%">No.</th>
										<th>구분</th>
										<th>공지</th>
									</tr>
								</thead>
								<tbody>
								<%if(list.isEmpty()) {%>
									<tr>
										<td colspan="2">등록된 공지사항이 없습니다.</td>
									</tr>
								<%} else{%>
									<%for(AdminNotice an : list) {%>
									<tr>
										<td><%=an.getNoticeNo() %></td>
										<td><%=an.getCaterogyName() %></td>
										<td class="nTitle title"><%=an.getNoticeTitle() %></td>
									</tr>
									<%} %>
								<%} %>
								</tbody>
							</table>
						</div>
					</div>
					<!-- QnA -->
					<div class="tab_gra_1">
						<div class="tab_gra_title">
							<a href="<%=contextPath%>/admin.list.qo?kpage=1"><addr title="QnA로 가기">QnA &gt;</addr></a>
						</div>
						<br>
						<div class="container">
							<table class="table table-sm">
								<thead>
									<tr>
										<th>No.</th>
										<th>문의</th>
										<th>답변상태</th>
									</tr>
								</thead>
								<tbody>
								<%if(list2.isEmpty()) {%>
									<tr><td colspan="2">등록된 QnA가 없습니다.</td></tr>
								<%} else{%>
									<%for(AdminQna aq : list2) {%>
									<tr>
										<td><%=aq.getBoardNo() %></td>
										<td class="qTitle title"><%=aq.getBoardTitle() %></td>
										<td><%=aq.getAnswerStatus() %></td>
									</tr>
									<%} %>
								<%} %>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 기간별 예약건수 -->
				<div class="tab_gra">
					<div class="tab_gra_title chart">기간별 예약건수</div>
					<div>
						<canvas id="myChart" width="370" height="350"></canvas>
						<script>
							const ctx = document.getElementById('myChart');
							const myChart = new Chart(ctx, {
								type : 'bar',
								data : {
									labels : [ '5/22~5/23', '5/24~5/25', '5/26~5/27', '5/28~5/29', '5/30~5/31',
											'6/1~6/2' ],
									datasets : [ {
										label : '이틀 간격',
										data : [ 3, 1, 2, 4, 1, 2 ],
										backgroundColor : [
												'rgba(154, 222, 226, 0.4)',
												'rgba(154, 222, 226, 0.4)',
												'rgba(154, 222, 226, 0.4)',
												'rgba(154, 222, 226, 0.4)',
												'rgba(154, 222, 226, 0.4)',
												'rgba(154, 222, 226, 0.4)' ],
										borderColor : [ 
												'rgba(154, 222, 226, 1)',
												'rgba(154, 222, 226, 1)',
												'rgba(154, 222, 226, 1)',
												'rgba(154, 222, 226, 1)',
												'rgba(154, 222, 226, 1)',
												'rgba(154, 222, 226, 1)' ],
										borderWidth : 2
									} ]
								},
								options : {
									responsive : false,
									scales : {
										y : {
											beginAtZero : true
										}
									}
								}
							});
						</script>
					</div>
				</div>
			</div>
			<!-- 예약회원관리 -->
			<div id="easy_menu2">
				<div class="tab_gra_title">
					<a href="<%=contextPath %>/reservationChange.re"><addr title="예약회원관리로 가기">예약회원관리 &gt;</addr></a>
				</div>
				<br>
				<div class="container">
					<table class="table table-sm">
						<thead>
							<tr>
								<th width="15%">회원번호</th>
								<th>이름</th>
								<th>구분</th>
								<th>예약번호</th>
								<th>예약일</th>
								<th>항공편번호</th>
							</tr>
						</thead>
						<tbody>
						<%if(list3.isEmpty()) {%>
							<tr><td>예약한 회원이 없습니다.</td></tr>
						<%} else {%>
							<%for(AdminReservation ar : list3) {%>
								<tr>
									<td><%=ar.getEnrollNo() %></td>
									<td><%=ar.getUserName() %></td>
									<td><%=ar.getIntDomId() %></td>
									<td><%=ar.getBookingNo() %></td>
									<td><%=ar.getReservationDate() %></td>
									<td><%=ar.getFlightNo() %></td>
								</tr>
							<%} %>
						<%} %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script>
            $(function(){
            	$(".nTitle").click(function(){
            		location.href='<%=contextPath%>/admindetail.no?nno='+$(this).prev().prev().text();
            	});
            	$(".qTitle").click(function(){
            		location.href='<%=contextPath%>/admin.detail.qo?qno='+$(this).prev().text();
            	});
            	$("td:contains('답변대기')").css("color","rgb(210, 147, 30)");
            	$("td:contains('답변완료')").css("color","rgb(89, 196, 202)");
                $("tbody>tr").hover(function(){
                    $(this).css("backgroundColor", "rgb(243, 243, 243)");
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