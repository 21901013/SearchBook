<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#b1{
	background-color: red;
	color: white;
}
#b2{
	background-color: blue;
	color: white;
}
</style>
</head>

<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id = request.getParameter("id");
	MemberVO u = memberDAO.getOne(Integer.parseInt(id));
%>

	<div>
		<h1>Members</h1>
		<h3>Edit member</h3>
	</div>

	<div id="middle">
		<form action="edit_ok.jsp" method="post"></form>
		
		<table>
			<tr>
				<td>User ID:</td>
				<td><input type="text" name="userid" value="<%=u.getUserid()%>" /></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="username" value="<%=u.getUsername()%>" /></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="emailaddress" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Photo:</td>
				<td><input type="file" value="Select File" value="<%=u.getPhoto()%>" /></td>
			</tr>
			<tr>
				<td>Introduce Myself:</td>
				<td><textarea cols="50" rows="5" name="detail"><%=u.getDetail()%></textarea></td>
			</tr>
			<tr>
				<td><input type="button" id="b1" value="Cancel" onclick="history.back()" /></td>
				<td><input type="submit" id="b2" value="Submit" /></td>
			</tr>
		</table>
	</div>

</body>
</html>