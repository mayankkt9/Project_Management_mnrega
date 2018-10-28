<%@page import="bean.BeanGramPanchayat"%>
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
<h1>Gram Panchayat Details Screen</h1>

<%

Object obj=session.getAttribute("list");
if(obj != null){
	ArrayList<BeanGramPanchayat> alist=(ArrayList<BeanGramPanchayat>)obj;
%>
<table border="1" align="center">
<tr><th>Gram_Panchayat_Id</th><th>Gram_Panchayat_Name</th><th>Village_Name</th><th>District</th><th>State</th><th>Contact_Number</th><th>Gram_Panchayat_Username</th></tr>
<%
for(BeanGramPanchayat cb:alist){

%>

<tr><td><%=cb.getLicence() %></td><td><%=cb.getName() %></td><td><%=cb.getVname() %></td><td><%=cb.getDistrict() %></td><td><%=cb.getState() %></td><td><%=cb.getNumber() %></td><td><%=cb.getUname() %></td></tr>

<%} %>
</table>



<%} %>

</form>
</body>
</html>