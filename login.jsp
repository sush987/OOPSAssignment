<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div align="center">
<fieldset>
<%
String status =(String)request.getAttribute("status");
if(status != null){
	out.println(status);
}
%>
<legend><h1>Login</h1></legend>
<form action="loginServlet" method="post">
<table>

<tr>
<td>User Name : </td>
<td><input type="text" id="uname"  name="uname" required="required"></td>
<td><span style="color:red" id="unameError" >*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Password : </td>
<td><input type="password" id="pass" name="pass" pattern="[A-Za-z0-9!@#$%^&*_]{5,8}" required="required"></td>
<td><span style="color:red" id="passerror">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td><input type="submit" value="login"></td>
</tr>

</table>
</form>
<br>
<hr>
<a href="signup.jsp">Sign Up</a>
</fieldset>
</div>
</body>
</html>