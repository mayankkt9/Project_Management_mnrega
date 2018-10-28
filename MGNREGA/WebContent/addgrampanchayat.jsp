<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD GRAM PANCHAYAT</title>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor="cyan">
<center><h1>REGISTRATION FORM - GRAM PANCHAYAT</h1></center>
<form action="RegisterGramPanchayatSrv" method="post">
<table cellspacing="20px" align="center">
<tr><td>ENTER FULL NAME</td><td><input type="text" name="name" placeholder="ENTER NAME" required="required"></td></tr>
<tr><td>VILLAGE NAME</td><td><input type="text" name="vname" placeholder="ENTER VILLAGE NAME" required="required"></td></tr>
<tr><td>DISTRICT</td><td><input type="text" name="district" placeholder="ENTER DISTRICT" required="required"></td></tr>
<tr><td>STATE</td><td><input type="text" name="state" placeholder="ENTER STATE" required="required"></td></tr>
<tr><td>PHONE NUMBER</td><td><input type="text" name="number" placeholder="ENTER PHONE NUMBER" required="required"></td></tr>
<tr><td>USERNAME</td><td><input type="text" name="uname" placeholder="ENTER USERNAME" required="required"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass" placeholder="ENTER PASSWORD" required="required"></td></tr>
<tr><td></td><td><input type="submit" value="register" ></td></tr>

</table>

</form>
</body>
</html>