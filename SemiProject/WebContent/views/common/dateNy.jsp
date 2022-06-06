<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EST DATE</title>
</head>
<body>
	<%
		TimeZone time5;
		Date date5 = new Date();
		DateFormat df5 = new SimpleDateFormat("yyyy년 MM월 dd일");
		time5 = TimeZone.getTimeZone("America/New_York");
		df5.setTimeZone(time5);
		String nyDate = df5.format(date5);
	%>
	<div><%=nyDate %></div>
</body>
</html>