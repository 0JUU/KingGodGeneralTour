<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDT</title>
</head>
<body>
	<%
		TimeZone time2;
		Date date2 = new Date();
		DateFormat df2 = new SimpleDateFormat("HH:mm:ss");
		time2 = TimeZone.getTimeZone("America/New_York");
		df2.setTimeZone(time2);
		String nyTime = df2.format(date2);
	%>
	<div><%=nyTime %></div>
</body>
</html>