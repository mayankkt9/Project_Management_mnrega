<%@page import="bean.BeanGramPanchayat"%>
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
<center><h1 style="background-color:graytext;">WELCOME GRAM PANCHAYAT - 

<%
HttpSession ses=request.getSession();
Object obj=ses.getAttribute("GPdetails");
BeanGramPanchayat bean=(BeanGramPanchayat)obj;

HttpSession ses1=request.getSession();
ses1.setAttribute("gp", bean);
%>
<%= bean.getName() %>

</h1></center>
<center><B>
<a href="addpeople.jsp" style="font-size: larger;" >ADD PEOPLE</a><br><br>
<a href="seepeople.jsp" style="font-size: larger;" >SEE ALL PEOPLE</a><br><br>
<a href="AssignPeopleSrv"  style="font-size: larger;">ASSIGN PROJECT TO PEOPLE</a><br><br>
<a href="peoplereference1.jsp"  style="font-size: larger;">SEE PEOPLE YOU HAVE ADDED IN YOUR PROJECT</a><br><br>
<a href="updategrampanchayatSrv"  style="font-size: larger;">UPDATE ACCOUNT DETAILS</a><br><br>
</B>
</center>
</body>
</html>