<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="red">

<h1>BDO Registered Successfully...</h1>
<%
HttpSession ses=request.getSession();

Object obj=ses.getAttribute("idname");
if(obj != null)
{
	int id=(Integer)obj;
	
%>
<h1>BDO id is :<%=id %></h1>
<%} %>


<a href="BDOHome.jsp">Home</a>

<a href="index.jsp">Logout</a>

<a href="BDORegis.jsp">Back</a>

</body>
</html>