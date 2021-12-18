<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
#head {
	background-color: indianRed;
	color: white;
	padding-top: 3px;
    padding-bottom: 3px;
    text-align: center;
}
</style>
</head>

<body>
	<div id="head">
		<h1>Book</h1>
		<h3>Add a book</h3>
	</div>

	<div id="middle">
		<form action="addok" method="POST">
	<table id="edit">
		<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
		<tr><td>Author:</td><td><input type="text" name="author"/></td></tr>
		<tr><td>Location:</td><td><input type="text" name="location"/></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td>Publish Date:</td><td><input type="text" name="date"/></td></tr>
		<tr><td>Price:</td><td><input type="number" name="price" /></td></tr>
	</table>
	<br><br>
	<input type="button" id="b2" onclick="history.back()" value="Back to the list">
	<input type="submit" id="b1" value="Submit"/>

		</form>
	</div>

</body>
</html>