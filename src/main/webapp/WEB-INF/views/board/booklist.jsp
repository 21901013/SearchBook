<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.book.conn.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: slateblue;
  color: white;
}
#b1{
	border: 5px;
	padding: 7px;
	background-color: gold;
	color: black;
}
#b2{
	border: 3px;
	padding: 7px;
	background-color: dodgerblue;
	color: white;
}
#b3{
	border: 3px;
	padding: 7px;
	background-color: red;
	color: white;
}
</style>

<script>
	function delete_ok(id){
		var a = confirm("Delete for good?");
		if(a) location.href='delete_ok.jsp?id=' + id;
	}
	function view(id){
		location.href ='view.jsp?id='+id;
	}
	function editform(id){
		location.href ='editform.jsp?id='+id;
	}
</script>
</head>

<body>
	<h1>Book List</h1>
	<%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list", list);
	%>
	
	<table id="list" width="90%">
		<tr>
			<th>No</th>
			<th>User Id</th>
			<th>User Name</th>
			<th>Email</th>
			<th>Registered Date</th>
			<th>Add</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getSid()}</td>
				<td>${u.getUserid()}</td>
				<td>${u.getUsername()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getRegdate()}</td>
				<td><input type="button" id="b1" value="View" onclick="javascript:view(${u.getSid()})">
				<input type="button" id="b2" value="Edit" onclick="javascript:editform(${u.getSid()})">
				<input type="button" id="b3" value="Delete" onclick="javascript:delete_ok('${u.getSid()}')"></td>
			</tr>
		</c:forEach>
	</table>
	<br/><a href="addform.jsp">Add New Post</a>
</body>
</html>