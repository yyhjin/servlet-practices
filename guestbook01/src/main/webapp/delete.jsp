<%@page import="com.poscodx.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscodx.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	if(password.equals(new GuestbookDao().findPasswordByNo(Integer.parseInt(no)))) {
		new GuestbookDao().deleteByNo(no);	
	}
	
	response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 삭제되었습니다.</h1>
</body>
</html>