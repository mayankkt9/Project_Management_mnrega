<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor="#eeeeee">
<center><h1>Register BDO Screen</h1></center>
<form action="RegisBDOSrv" method="post">
<table cellspacing="20px" align="center">
<tr><td>ENTER FULL NAME</td><td><input type="text" name="name" placeholder="ENTER NAME" required="required"></td></tr>
<tr><td>ADDRESS</td><td><input type="text" name="address" placeholder="ENTER ADDRESS" required="required"></td></tr>
<tr><td>CONTACT NUMBER</td><td><input type="text" name="mobile" placeholder="ENTER CONTACT NUMBER" required="required"></td></tr>
<tr><td>EMAIL</td><td><input type="text" name="email" placeholder="ENTER EMAIL" required="required"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="password" placeholder="ENTER PASSWORD" required="required"></td></tr>

<tr><td></td><td><input type="submit" value="register" ></td></tr>

</table>

</form>
</body>
</html>