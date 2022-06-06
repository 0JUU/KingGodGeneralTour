<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String error = (String)request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error 500</title>
<style>
	div {text-align:center; padding-top: 300px;}
	h1{color: rgb(154, 222, 226);}
	h2{color: lightgray;}
</style>
</head>
<body>
	<div>
	<h1>ERROR 500</h1>
	<h2>다시 시도해주세요.</h2>
	</div>
</body>
</html>