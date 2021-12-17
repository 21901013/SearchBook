<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.user.UserDAO, com.crud.user.UserVO,java.util.*"%>
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
	UserDAO userDAO = new UserDAO();
	String id = request.getParameter("id");
	UserVO u = userDAO.getUser(Integer.parseInt(id));
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
				<td>Password:</td>
				<td><input type="text" name="password" value="<%=u.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
					<td><input type="text" name="phonenumber" value="<%=u.getNumPhone()%>" /></td>
				</tr>
				<tr>
					<td><input type="button" id="b1" value="Cancel" onclick="history.back()"/></td>
					<td><input type="submit" id="b2" value="Change" /></td>
				</tr>
		</table>
	</div>

</body>
</html>