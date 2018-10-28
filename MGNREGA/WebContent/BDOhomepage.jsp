<%@page import="bean.BDOBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BDO</title>
<%@include file="headerfooter.jsp" %>

</head>
<body bgcolor="cyan">

<center style=" "><B>
<h1 style="font-size:xx-large;">WELCOME BDO - 
<%
HttpSession ses=request.getSession();
Object obj=ses.getAttribute("BDOdetails");
BDOBean bean=(BDOBean)obj;

HttpSession ses1=request.getSession();
ses1.setAttribute("bdo", bean);
%>
<%= bean.getName() %>
</h1>
<table>
<tr><td><a href="addgrampanchayat.jsp" title="CLICK HERE TO ADD GRAM PANCHAYAT">ADD GRAM PANCHAYAT</a><br><br></td></tr>
<tr><td><a href="Addproject.jsp" >ADD PROJECT</a><br><br></td></tr>
<tr><td><a href="AssignGramPanchayat.jsp" >ASSIGN PROJECT TO GRAM PANCHAYAT</a><br><br></td></tr>
<tr><td><a href="SeeAllAssignedProjectSrv" >SEE ALL ASSIGNED PROJECTS TO GRAMPANCHAYAT</a><br><br></td></tr>
<tr><td><a href="SeeAllProjectSrv" >SEE ALL PROJECTS</a><br><br></td></tr>
<tr><td><a href="SeeAllGramPanchayatSrv" >SEE ALL GRAM PANCHAYATS</a><br><br></td></tr>
<tr><td><a href="UpdateBDOSrv" >UPDATE ACCOUNT DETAILS</a><br><br></td></tr>
</table>
</B>
</center>
</body>
</html>