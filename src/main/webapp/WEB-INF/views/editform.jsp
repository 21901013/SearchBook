<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.*,java.util.*"%>
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

//<%
//	BoardDAO boardDAO = new BoardDAO();
//	String id = request.getParameter("id");
//	BoardVO u = boardDAO.getOne(Integer.parseInt(id));
//%>

<form:form commandName="boardVO" action="../editok" method="POST">
	<form:hidden path="id"/>
	
	<table id="edit">
		<tr><td>Title:</td><td><input type="text" path="title"/></td></tr>
		<tr><td>Author:</td><td><input type="text" path="author"/></td></tr>
		<tr><td>Location:</td><td><input type="text" path="location"/></td></tr>
		<tr><td>Date:</td><td><input type="text" path="date" /></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" path="content"></textarea></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" onclick="history.back()" value="Back to the list">
</form:form>
</body>
</html>