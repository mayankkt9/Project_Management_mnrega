<%@page import="bean.AssignedGramPanchayat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor="cyan">
<form action="">
<h1 align="center">ASSIGNED PROJECTS TO GRAM PANCHAYAT</h1>

<%

Object obj=session.getAttribute("list");
if(obj != null){
	
	ArrayList<AssignedGramPanchayat> alist=(ArrayList<AssignedGramPanchayat>)obj;
%>
<table border="1" align="center">
<tr><th>Gram_Panchayat_Id</th><th>Gram_Panchayat_Name</th><th>Village_Name</th><th>District</th><th>Project_Id</th><th>Project_Name</th><th>Project_Description</th><th>Project_Duration</th></tr>
<%
for(AssignedGramPanchayat cb:alist){

%>

<tr><td><%=cb.getGid() %></td><td><%=cb.getGname() %></td><td><%=cb.getGvname() %></td><td><%=cb.getGdistrict() %></td><td><a href="peoplerefernce.jsp?id=<%=cb.getPid()%>"><%=cb.getPid() %></a></td><td><%=cb.getPname() %></td><td><%=cb.getPdescription()%></td><td><%=cb.getPduration()%></td></tr>

<%} %>
</table>



<%} %>

</form>
</body>
</html>