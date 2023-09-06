<%@page import="com.poscodx.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="com.poscodx.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<%
	List<GuestbookVo> list = new GuestbookDao().findAll();
	int len = list.size();
%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>

	<br>
	<table width=510 border=1>
	<%
		for(GuestbookVo vo : list) {
	%>
		<tr>
			<td>[<%=len-- %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td><a href="deleteform.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContents() %></td>
		</tr>
	<%
		}
	%>
	</table>

</body>
</html>