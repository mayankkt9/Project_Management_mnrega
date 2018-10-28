<%@page import="bean.ProjectBean"%>
<%@page import="dao.AssignPeopleDaoImpl"%>
<%@page import="dao.AssignPeopleDao"%>
<%@page import="bean.BeanGramPanchayat"%>
<%@page import="dao.PeopleReferenceDaoImpl"%>
<%@page import="dao.PeopleReferenceDao"%>
<%@page import="bean.PeopleBean"%>
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
<%
HttpSession ses=request.getSession();
Object obj=ses.getAttribute("GPdetails");
BeanGramPanchayat bean=(BeanGramPanchayat)obj;

AssignPeopleDao dao=new AssignPeopleDaoImpl();
ProjectBean pbean=dao.getProjectName(bean);
if(pbean!=null){
int id=pbean.getId();

PeopleReferenceDao dao1=new PeopleReferenceDaoImpl();
ArrayList<PeopleBean> alist=dao1.getDetails(id);





%>
<h1>YOUR ID IS <%=id %></h1>
<table border="1" align="center">
<tr><th>People_Id</th><th>People_Name</th><th>People_VILLAGE_NAME</th><th>PEOPLE_AGE</th><th>PEOPLE_GENDER</th><th>PEOPLE_CASTE</th><th>PEOPLE_EXPERIENCE</th><th>PEOPLE_ASSIGN_STATUS</th></tr>
<%
for(PeopleBean cb:alist){
%>

<tr><td><%=cb.getId() %></td><td><%=cb.getName() %></td><td><%=cb.getVname() %></td><td><%=cb.getAge() %></td><td><%=cb.getGender() %></td><td><%=cb.getCaste() %></td><td><%=cb.getExperience() %></td><td><%=cb.getAssign() %></td></tr>

<% }%>
</table>
<% }else{%>
<h1>YOU HAVENT RECEIVED ANY PROJECT YET</h1>
<%} %>
</body>
</html>