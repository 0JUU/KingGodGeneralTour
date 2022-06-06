<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.DateFormat,java.text.SimpleDateFormat,java.util.Date,java.util.TimeZone"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KST DATE</title>
</head>
<body>
	<%
		TimeZone time4;
		Date date4 = new Date();
		DateFormat df4 = new SimpleDateFormat("yyyy년 MM월 dd일");
		time4 = TimeZone.getTimeZone("Asia/Seoul");
		df4.setTimeZone(time4);
		String korDate = df4.format(date4);
	%>
	<div><%=korDate %></div>
</body>
</html>