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
</style>
</head>

<body>
	<div>
		<h1>Account</h1>
		<h3>Add an account</h3>
	</div>

	<div id="middle">
		<form action="add_ok.jsp" method="post">

			<table>
				<tr>
					<td>User ID:</td>
					<td><input type="text" name="userid" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="text" name="password" /></td>
				</tr>
				<tr>
					<td>Email Address:</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>User Type:</td>
					<td><input type="radio" name="usertype" /></td>
				<tr>
					<td>Phone Number:</td>
					<td><input type="text" name="phonenumber" /></td>
				</tr>
				<tr>
					<td><input type="button" id="b1" value="Cancel" onclick="history.back()"/></td>
					<td><input type="submit" id="b2" value="Submit" /></td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>