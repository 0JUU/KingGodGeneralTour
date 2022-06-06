<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CET DATE</title>
</head>
<body>
	<%
		TimeZone time6;
		Date date6 = new Date();
		DateFormat df6 = new SimpleDateFormat("yyyy년 MM월 dd일");
		time6 = TimeZone.getTimeZone("Europe/Paris");
		df6.setTimeZone(time6);
		String parisDate = df6.format(date6);
	%>
	<div><%=parisDate %></div>
</body>
</html>