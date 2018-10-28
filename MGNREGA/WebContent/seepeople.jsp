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
<script language="javascript">

function change()
{
	window.location.href="seepeople1.jsp";
}
</script>
</head>
<body bgcolor="cyan">
<table align="center">
<tr>
<td><input type="radio" onclick="change()">SHOW ALL PEOPLE</td>
</tr>
</table>
<%
PeopleDao dao=new PeopleDaoImpl();
ArrayList<PeopleBean> alist=dao.seeAllPeople();

%>

<table border="1" align="center">
<tr><th>People_Id</th><th>People_Name</th><th>People_VILLAGE_NAME</th><th>PEOPLE_AGE</th><th>PEOPLE_GENDER</th><th>PEOPLE_CASTE</th><th>PEOPLE_EXPERIENCE</th><th>PEOPLE_ASSIGN_STATUS</th></tr>
<%
for(PeopleBean cb:alist){
if(cb.getAssign().equals("NOT ASSIGNED")){
%>

<tr><td><%=cb.getId() %></td><td><%=cb.getName() %></td><td><%=cb.getVname() %></td><td><%=cb.getAge() %></td><td><%=cb.getGender() %></td><td><%=cb.getCaste() %></td><td><%=cb.getExperience() %></td><td><%=cb.getAssign() %></td></tr>

<%} }%>
</table>
</body>
</html>