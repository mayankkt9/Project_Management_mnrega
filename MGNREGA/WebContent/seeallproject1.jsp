<%@page import="bean.ProjectBean"%>
<%@page import="java.util.ArrayList"%>
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
	window.location.href="seeallproject.jsp";
}
</script>
</head>
<body bgcolor="cyan">

<table align="center">
<tr>
<td><input type="radio" onclick="change()">CLICK TO SHOW ALL NON ASSIGNED PROJECT</td>
</tr>
</table>
<center><h1>Project Details Screen</h1></center>

<%

Object obj=session.getAttribute("list");
if(obj != null){
	
	ArrayList<ProjectBean> alist=(ArrayList<ProjectBean>)obj;
%>

<table border="1" align="center">
<tr><th>Project_id</th><th>Project_Name</th><th>Project_Duration</th><th>Project_Capacity</th><th>Project_Description</th><th>Project_Start_Date</th><th>Project_End_Date</th><th>Project_Status</th></tr>
<%
for(ProjectBean cb:alist){

%>

<tr><td><%=cb.getId() %></td><td><%=cb.getName() %></td><td><%=cb.getDuration() %></td><td><%=cb.getCapacity() %></td><td><%=cb.getDescription() %></td><td><%=cb.getSdate() %></td><td><%=cb.getEdate() %></td><td><%=cb.getStatus() %></td></tr>

<%} %>
</table>



<%} %>

</form>
</body>
</html>