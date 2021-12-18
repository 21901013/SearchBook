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
  background-color: LightPink;
  color: white;
}
#head{
	background-color: PaleVioletRed;
	color: white;
	padding-top: 20px;
    padding-bottom: 20px;
    text-align: center;
}
#b1{
	border-radius: 7px;
	padding: 5px;
	float: right;
	align-content: right;
	background-color: mistyRose;
	color: black;
}

</style>

<script>
	function delete_ok(id){
		var a = confirm("Delete for good?");
		if(a) location.href='deleteok/' + id;
	}
	
	function editform(id){
		location.href ='editform/'+id;
	}
</script>
</head>

<body>
	<h1 id="head">Book List</h1>
	
	<table id="list" width="90%">
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Author</th>
			<th>Content</th>
			<th>Location</th>
			<th>Updated Date</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getTitle()}</td>
				<td>${u.getAuthor()}</td>
				<td>${u.getContent()}</td>
				<td>${u.getLocation()}</td>
				<td>${u.getDate()}</td>
				<td>${u.getPrice()}</td>
				<td><a href="editform/${u.getId()}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.getId()}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/><button id="b1" type="button" onclick="location.href='add'">Add New Book</button>
</body>
</html>