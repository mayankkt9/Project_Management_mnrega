
<%@page import="bean.BDOBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">

<%

Object obj=session.getAttribute("cbean");
if(obj != null){
	BDOBean bd=(BDOBean)obj;
%>

<h1>Welocme <%=bd.getName() %></h1>
<%} %>

<a href="BDOHomepage.jsp">Register GP</a><br><br>

</body>
</html>