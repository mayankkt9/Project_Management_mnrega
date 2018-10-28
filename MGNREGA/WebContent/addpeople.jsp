<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor='cyan'>
<center><h1>ADD VILLAGE PEOPLES</h1></center>
<form action="RegisterPeopleSrv" method="post">
<table cellspacing="20px" align="center">
<tr><td>ENTER FULL NAME</td><td><input type="text" name="name" placeholder="ENTER NAME" required="required"></td></tr>
<tr><td>VILLAGE NAME</td><td><input type="text" name="vname" placeholder="ENTER VILLAGE NAME" required="required"></td></tr>
<tr><td>AGE</td><td><input type="text" name="age" placeholder="ENTER AGE" required="required"></td></tr>
<tr><td>GENDER</td><td> <input type="radio" name="gender" value="male"> Male</td></tr>
<tr><td></td><td> <input type="radio" name="gender" value="female"> Female</td></tr>

<tr><td>CASTE</td><td><input type="text" name="caste" placeholder="ENTER CASTE" required="required"></td></tr>
<tr><td>EXPERIENCE</td><td><input type="text" name="exp" placeholder="ENTER MONTHS" required="required"></td></tr>

<tr><td></td><td><input type="submit" value="register" ></td></tr>

</table>

</form>
</body>
</html>