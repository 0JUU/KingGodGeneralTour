<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CET</title>
</head>
<body>
	<%
		TimeZone time3;
		Date date3 = new Date();
		DateFormat df3 = new SimpleDateFormat("HH:mm:ss");
		time3 = TimeZone.getTimeZone("Europe/Paris");
		df3.setTimeZone(time3);
		String parisTime = df3.format(date3);
	%>
	<div><%=parisTime %></div>
</body>
</html>