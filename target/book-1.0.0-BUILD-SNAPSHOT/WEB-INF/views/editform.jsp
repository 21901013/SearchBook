<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
  text-align:left;
}
#edit th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
#head{
	background-color: indianRed;
	color: white;
	padding-top: 3px;
    padding-bottom: 3px;
    text-align: center;
}
#b1 {
	border-radius: 7px;
	padding: 5px;
	float: right;
	align-content: right;
	background-color: mistyRose;
	color: black;
}
#b2 {
	border-radius: 7px;
	padding: 5px;
	background-color: black;
	color: white;
}
</style>
</head>

<body>

	<div id="head">
		<h1>Book</h1>
		<h3>Add a book</h3>
	</div>


<form:form commandName="u" action="../editok" method="POST">
	<form:hidden path="id"/>
	
	<table id="edit">
		<tr><td>Title:</td><td><form:input type="text" path="title"/></td></tr>
		<tr><td>Author:</td><td><form:input type="text" path="author"/></td></tr>
		<tr><td>Location:</td><td><form:input type="text" path="location"/></td></tr>
		<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
		<tr><td>Publish Date:</td><td><form:input type="text" path="date"/></td></tr>
		<tr><td>Price:</td><td><form:input type="text" path="price" /></td></tr>
	</table>
	<br><br>
	<input type="button" id="b2" onclick="history.back()" value="Back to the list">
	<input type="submit" id="b1" value="Save changes"/>
</form:form>
</body>
</html>