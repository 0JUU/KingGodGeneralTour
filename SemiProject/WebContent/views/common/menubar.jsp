<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.kh.userinfo.model.vo.*"%>
<%
	UserInfo loginUser = (UserInfo)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	#user-info> a{
		text-decoration: none;
		color: black;
	}
	#user-info> a:hover{
		font-weight: bold;
	}
</style>
</head>
<body>
	<script>
		var msg = "<%=alertMsg%>"; //" " /"null"
	
		if(msg!="null"){
			alert(msg);
			<%session.removeAttribute("alertMsg");%>
		}
	</script>
	<div id="header">
	    <div id="header_1">
	        <a href="<%=contextPath%>"><img src="/KGG/resources/images/KGG투어로고.png" alt="" id="logo"></a>
	    </div>
	    <div id="header_2">
	        <ul id="navi">
	            <li id="internationalMenu"><a href="<%=contextPath%>">해외예약</a></li>
	            <li id="domesticMenu"><a href="<%=contextPath%>/domesticPage.ai">국내예약</a></li>
	            <li id="quarantineMenu"><a href="<%=contextPath%>/index.qu">방역현황</a></li>
	            <li id="recommend" class="recommend"><a href="<%=contextPath %>/list.re?kpage=1">추천여행지</a></li>
	            <li id="mypage" class="mypage"><a href="<%=contextPath %>/myPage.us">마이페이지</a>
	                <ul>
	                    <li class="subMenu2"><a href="<%=contextPath %>/update.us">회원정보수정</a></li>
	                    <li class="subMenu2"><a href="<%=contextPath %>/updatePwd.us">비밀번호변경</a></li>
	                    <li class="subMenu2"><a href="<%=contextPath %>/reservation.us">예약조회</a></li>
	                    <li class="subMenu2"><a href="<%=contextPath %>/delete.us">회원탈퇴</a></li>
	                </ul>
	            </li>
	            <li id="cs" class="cs"><a href="#">고객센터</a>
	                <ul>
	                    <li class="subMenu3"><a href="<%=contextPath %>/list.no?kpage=1">공지사항</a></li>
	                    <li class="subMenu3"><a href="<%=contextPath%>/userout1.bo">FAQ</a></li>
	                    <li class="subMenu3"><a href="<%=contextPath%>/list.qo?kpage=1">Q&A</a></li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	    <div id="header_3">
	    	<!-- 로그인 전 -->
	    	<%if(loginUser==null) {%>
	        	<a href="<%=contextPath%>/loginPage.us">로그인</a>
	        	<a href="<%=contextPath%>/enrollPage.us">회원가입</a>
	    	<%}else {%>
	    	<!-- 로그인 후-->
	    	<div id="user-info">
	    		<b><%=loginUser.getUserName() %>님 환영합니다.</b><br>
	    		<a href="<%=contextPath%>/logout.us">로그아웃</a>
	    	</div>
	    	<%} %>
	    </div>
	</div>
	<script>
        $(function(){
            $(".recommend>a").on({"mouseenter":function(){
                $(this).css("font-size", "24px");
                $(this).css("color", "rgb(154, 222, 226)");
            },
            "mouseout":function(){
                $(".recommend>a").css("color", "black");
                $(this).css("font-size", "20px");
            }});
            $(".subMenu1").on({"mouseenter":function(){
                $("#recommend>a").css("color", "rgb(154, 222, 226)");
                $("#recommend>a").css("font-size", "24px");
            },
            "mouseout":function(){
                $("#recommend>a").css("color", "black");
                $("#recommend>a").css("font-size", "20px");
            }});
            $(".mypage>a").on({"mouseenter":function(){
                $(this).css("font-size", "24px");
                $(this).css("color", "rgb(154, 222, 226)");
            },
            "mouseout":function(){
                $("#mypage>a").css("color", "black");
                $(this).css("font-size", "20px");
            }});
            $(".subMenu2").on({"mouseenter":function(){
                $("#mypage>a").css("color", "rgb(154, 222, 226)");
                $("#mypage>a").css("font-size", "24px");
            },
            "mouseout":function(){
                $("#mypage>a").css("color", "black");
                $("#mypage>a").css("font-size", "20px");
            }});
            $(".cs>a").on({"mouseenter":function(){
                $(this).css("font-size", "24px");
                $(this).css("color", "rgb(154, 222, 226)");
            },
            "mouseout":function(){
                $(".cs>a").css("color", "black");
                $(this).css("font-size", "20px");
            }});
            $(".subMenu3").on({"mouseenter":function(){
                $("#cs>a").css("color", "rgb(154, 222, 226)");
                $("#cs>a").css("font-size", "24px");
            },
            "mouseout":function(){
                $("#cs>a").css("color", "black");
                $("#cs>a").css("font-size", "20px");
            }});
        });
    </script>
</body>
</html>