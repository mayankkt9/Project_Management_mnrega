<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor="cyan">
<form action="AddProjectSrv" method="post">
<center><h1>ADD PROJECT AND ITS DETAILS</h1></center>
<table border="2" cellspacing="10" cellpadding="10" align="center">

<tr>
<td>Enter Name:</td>
<td><input type="text" name="name" required="required" placeholder="Project Name"></td>
</tr>
<tr>
<td>Enter Duration:</td>
<td><input type="text" name="duration" required="required" placeholder="Duration"></td>
</tr>
<tr>
<td>Enter Maximum Capacity:</td>
<td><input type="text" name="capacity" required="required" placeholder="Maximum Capacity"></td>
</tr>
<tr>
<td>Enter Description:</td>
<td><input type="text" name="description" required="required" placeholder="Description"></td>
</tr>
<tr>
<td>Enter Starting Date:</td>
<td><input type="text" name="sdate" required="required" placeholder="Starting Date"></td>
</tr>
<tr>
<td>Enter Ending Date:</td>
<td><input type="text" name="edate" required="required" placeholder="Ending Date"></td>
</tr>




<tr><td><input type="submit" value="Submit"></td></tr>




</form>

<form action="BDOhomepage.jsp">
</table>
<table cellpadding="10" cellspacing="10">
<tr>
<td>

</td>
</tr>
</table>
</form>
<form action="BDOhomepage.jsp">
<table cellpadding="10" cellspacing="10">>
<tr><td><input type="submit" value="back"></td></tr>
</table>
</form>
</body>
</html>