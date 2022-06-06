<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KST</title>
</head>
<body>
	<%
		TimeZone time;
		Date date = new Date();
		DateFormat df = new SimpleDateFormat("HH:mm:ss");
		time = TimeZone.getTimeZone("Asia/Seoul");
		df.setTimeZone(time);
		String korTime = df.format(date);
	%>
	<div><%=korTime %></div>
</body>
</html>