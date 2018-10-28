<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
function changeIt()
{
var i = 1;
my_div.innerHTML = my_div.innerHTML + document.getElementById("nm").value +" - "+ document.getElementById("fd").value+ "<br>"

}
</script>
<%@include file="headerfooter.jsp" %>
</head>
<body  bgcolor="cyan">
<h1 align="center">FEEDBACK</h1>
<table border="2" cellspacing="15" cellpadding="15" align="center">

<tr>
<td>Name:</td>
<td><input type="text" id="nm" required="required" placeholder="Enter Name"></td>
</tr>

<tr>
<td>Location:</td>
<td><input type="text" name="loc" required="required" placeholder="Enter Location"></td>
</tr>

<tr>
<td>Phone Number:</td>
<td><input type="number" name="ph" required="required" placeholder="Phone Number"></td>
</tr>

<tr>
<td>Feedback</td>
<td><input type="text" id="fd" required="required" placeholder="Enter Feedback"></td>
</tr>
<br><br>
<tr>
<td>
<center><input type ="submit" value="submit" onclick="changeIt()"></center>
</td>
</tr>
</table>
<div id="my_div"></div>
</table>
</body>
</html>