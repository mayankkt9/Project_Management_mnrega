<%@page import="bean.ProjectBean"%>
<%@page import="bean.PeopleBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PeopleDaoImpl"%>
<%@page import="dao.PeopleDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="headerfooter.jsp" %>
</head>
<body>
<form action="AssignPeopleSrv1">
<%
HttpSession ses=request.getSession();
Object obj=ses.getAttribute("pbean");
if(obj!=null)
{
ProjectBean pbean=(ProjectBean)obj;
if(pbean.getCapacity()!=0)
{
%>
<center><h1>YOUR PROJECT is - <%=pbean.getName() %></h1></center>

<table cellspacing="10" cellpadding="10">
<tr><td>YOUR PROJECT ID</td><td><input type="text" name="projectid" value="<%=pbean.getId() %>" readonly="readonly"></td></tr>
<tr><td>ASSIGN PEOPLE </td>
<td>
<select name="peopleid">
<%

PeopleDao dao=new PeopleDaoImpl();
ArrayList<PeopleBean> alist=dao.seeAllPeople();
 for(PeopleBean cb:alist){
%>
<%if(cb.getAssign().equals("NOT ASSIGNED")) {%>
<option value=<%=cb.getId() %>><%=cb.getId() %></option>

<%} }%>
</select>
</td>
</tr>
<tr>
<td>CAPACITY LEFT - </td>
<td><input type="text" name="capacity" readonly="readonly" value="<%=pbean.getCapacity()%>"></td>
</tr>
<tr><td><input type="submit" value="ASSIGN"></td></tr>




</table>
<%}
else
{%>
<h1>CAPACITY FULL</h1>
<%} %>
<%} else{%>
<h1>YOU HAVENT GOT ANY PROJECT FROM BDO YET</h1>
<%} %>
</form>







</body>
</html>