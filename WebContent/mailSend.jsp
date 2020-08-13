<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mail.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userEmail = (String) request.getParameter("Email");
	
	boolean result = mailSender.sendMail(userEmail, "id1");
	
	if(result)
		out.print("발송 완료");
	else
		out.print("발송 실패");
%>
</body>
</html>