<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phone Verification</title>
</head>
<body>
<div align="center">
<h1>PHONE VERIFICATION</h1>
<h3 style="color:red">We have sent an OTP to your mobile.</h3>
<form action="signupServlet" method="post">
<input type="hidden" name="action" value="phone">
<p>Enter OTP: </p>
<input type="text" id="otpid" name="otp" placeholder="Enter OTP"  required="required" pattern="[0-9]{6}">
<span  id="otpError" style="color:red">*</span>
<br><br>
<input type="submit" value="verify">
</form>
</div>
</body>
</html>