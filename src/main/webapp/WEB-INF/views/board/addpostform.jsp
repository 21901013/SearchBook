x<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#edit {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#edit td, #edit th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#edit th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>

<body>
<form action="addok" method="post">
	<table id="edit">
		<tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
		<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
		<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
	</table>
	<button type="button" onclick="location.href='list'">Back to the list</button>
	<button type="submit">Register</button>
</form>
</body>
</html>