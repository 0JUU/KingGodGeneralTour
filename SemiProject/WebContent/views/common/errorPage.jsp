<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생!</title>
</head>
<body>
	<h1 align="center" style="padding-top:300px; color: gray;"><%=errorMsg %></h1>
</body>
</html>