<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#b1 {
	background-color: magenta;
	color: white;
}
#b2 {
	background-color: blue;
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
	<div>
		<h1>Book</h1>
		<h3>Add a book</h3>
	</div>

	<div id="middle">
		<form action="add_ok.jsp" method="post">

			<table>
				<tr>
					<td>Title:</td>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td>Author:</td>
					<td><input type="text" name="author" /></td>
				</tr>
				<tr>
					<td>Location:</td>
					<td><input type="text" name="location" /></td>
				</tr>
				<tr>
					<td>Date:</td>
					<td><input type="date" name="date" /></td>
				<tr>
					<td>Content:</td>
					<td><input type="text" name="content" /></td>
				</tr>
				<tr>
					<td><input type="button" id="b1" value="Cancel" onclick="location.href=list"/></td>
					<td><input type="submit" id="b2" value="Submit" /></td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>