<%@page import="bean.BeanGramPanchayat"%>
<%@page import="dao.GramPanchayatDaoImpl"%>
<%@page import="dao.GramPanchayatDao"%>
<%@page import="bean.ProjectBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProjectDaoImpl"%>
<%@page import="dao.ProjectDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="headerfooter.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body bgcolor="cyan">
<center><h1>ASSIGN PROJECT TO GRAM PANCHAYAT</h1></center>
<form action="AssignGramPanchayatSrv">
<table cellspacing="20" cellpadding="20" border="1" align="center">
<tr>
<td>
CHOOSE PROJECT 
</td>
<td>
<select name="projectid">
<%
ProjectDao dao=new ProjectDaoImpl();
ArrayList<ProjectBean> alist=dao.seeAllProject();
 for(ProjectBean cb:alist){
%>
<%if(cb.getStatus().equals("NOT ASSIGNED")) {%>
<option value=<%=cb.getId() %>><%=cb.getId() %></option>

<%} }%>
</select>
</td>
</tr>
<tr>
<td>
CHOOSE GRAM PANCHAYAT
</td>
<td>
<select name="grampanchayatid">
<%

GramPanchayatDao dao1=new GramPanchayatDaoImpl();
ArrayList<BeanGramPanchayat> alist1=dao1.seeAllGramPanchayat();
 for(BeanGramPanchayat cb:alist1){

%>

<option value=<%=cb.getLicence() %>><%=cb.getLicence() %></option>

<%} %>
</select>
</td>
<tr>
<td>
<input type="submit" value="assign">
</td>
</tr>
</table>	
</form>
</body>
</html>