<%@page import="bean.BDOBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@include file="headerfooter.jsp" %>
</head>


<%
HttpSession sess=request.getSession();
Object obj=sess.getAttribute("bdo");
	
	if(obj!=null){
		
		BDOBean bd=(BDOBean)obj;
		
%>

<body bgcolor="pink">


<table cellspacing="20px" align="center">
<body bgcolor="pink">
<center><h1>UPDATE BDO ACCOUNT DETAILS Screen</h1></center>
<form action="UpdateBDOSqlSrv" method="post">
<table cellspacing="20px" align="center">
<tr><td>LICENCE ID</td><td><input  name="id" value="<%=bd.getId()%>"  readonly="readonly"></td></tr>
<tr><td>ENTER FULL NAME</td><td><input readonly="readonly" name="name" value="<%=bd.getName()%> "></td></tr>
<tr><td>ADDRESS</td><td><input type="text" name="address" required="required"value="<%=bd.getAddress()%>" ></td></tr>
<tr><td>CONTACT NUMBER</td><td><input type="text" name="mobile" required="required"value="<%=bd.getMobile()%>" ></td></tr>
<tr><td>EMAIL</td><td><input type="text" name="email" required="required"value="<%=bd.getEmail()%>" ></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="password" placeholder="ENTER PASSWORD"required="required" value="<%=bd.getPassword()%>" ></td></tr>
<tr><td>RE-ENTER PASSWORD</td><td><input type="password" name="pass" placeholder="RE-ENTER PASSWORD" required="required" value="<%=bd.getPassword()%>"></td></tr>
<tr><td></td><td><input type="submit" value="UPDATE" ></td></tr>

<%} %>
</table>

</form>
</body>

</html>