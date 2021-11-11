<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<script type="text/javascript">
function validate(){
	var pass=document.getElementById("pass").value;
	var cpass=document.getElementById("cpass").value;
	
	if(cpass!=pass){
		document.getElementById("cpasserror").innerHTML="Please enter the same password!";
		return false;
	}
	return true;
}
</script>
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
<legend><h1>Sign up</h1></legend>
<form onsubmit="return validate()" action="signupServlet" method="post">
<table>

<tr>
<td>First Name : </td>
<td><input type="text" id="fname" name="fname" required="required"></td>
<td><span style="color:red" id="fnameError">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Last Name : </td>
<td><input type="text" id="lname" name="lname" required="required"></td> 
<td><span style="color:red" id="lnameError">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>User name : </td>
<td><input type="text" id="uname" name="uname" required="required"></td> 
<td><span style="color:red" id="unameError">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Residential Address : </td>
<td><input type="text" id="resadd" name="resadd" required="required"></td> 
<td><span style="color:red" id="resadderror">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Mobile No : </td>
<td><input type="tel" id="mobnum" name="mobnum" pattern="[7-9]{1}[0-9]{9}" required="required"></td> 
<td><span style="color:red" id="mobnumerror">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Car Registration Number : </td>
<td><input type="text" id="carnum" name="carnum" pattern="^[A-Z]{2}[ ][0-9]{2}[ ][A-Z]{0,3}[ ][A-Z0-9]{4}$" required="required"></td> 
<td><span style="color:red" id="carnumerror">*</span></td> <!-- to make the field mandatory -->
<td><span id="carnumerror1">Ex:AZ 09 ABC 1234</span></td>
</tr> 

<tr>
<td>Email : </td>
<td><input type="email" id="email" name="email" required="required"></td> <!-- type="email" ensures if correct email syntax is entered -->
<td><span style="color:red" id="emailerror">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td>Password : </td>
<td><input type="password" id="pass" name="pass" pattern="[A-Za-z0-9!@#$%^&*_]{5,8}" required="required"></td> <!-- type="password" ensures password is encrypted and with correct syntax -->
<td><span style="color:red" id="passerror">*</span></td> <!-- to make the field mandatory -->
<td><span id="passerror1">You can use A-Z,a-z,0-9,!@#$%^&*_ (Size=5-8)</span></td>
</tr>  

<tr>
<td>Confirm Password : </td>
<td><input type="password" id="cpass" name="cpass" required="required"></td>
<td><span style="color:red" id="cpasserror">*</span></td> <!-- to make the field mandatory -->
</tr>

<tr>
<td><input type="submit" value="register"></td>
</tr>

</table>
</form>
<br>
<hr>
Already a User?<a href="login.jsp">Login</a>
</fieldset>
</div>
</body>
</html>