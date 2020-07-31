<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<body>
id :<%=request.getParameter("id") %><br>
패스워드:<%=request.getParameter("pwd") %>
</body>
</html>