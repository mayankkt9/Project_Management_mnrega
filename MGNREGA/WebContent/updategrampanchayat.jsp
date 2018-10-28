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
<body>
<%
HttpSession sess=request.getSession();
Object obj=sess.getAttribute("gp");
	
	if(obj!=null){
		
		BeanGramPanchayat gp=(BeanGramPanchayat)obj;
		
%>

<body bgcolor="pink">


<table cellspacing="10px" align="center">
<body bgcolor="pink">
  <center><h1>UPDATE GRAM PANCHAYAT ACCOUNT DETAILS Screen</h1></center>
<form action="updategrampanchayatsqlSrv" method="post">
<table cellspacing="20px" align="center">
<tr><td>LICENCE ID</td><td><input  name="licence" value="<%=gp.getLicence()%>"  readonly="readonly"></td></tr>
<tr><td>ENTER FULL NAME</td><td><input readonly="readonly" name="name" value="<%=gp.getName()%> "></td></tr>
<tr><td>VILLAGE NAME</td><td><input readonly="readonly" name="vname" value="<%=gp.getVname()%> "></td></tr>
<tr><td>DISTRICT</td><td><input readonly="readonly" name="district" value="<%=gp.getDistrict()%> "></td></tr>
<tr><td>STATE</td><td><input readonly="readonly" name="state" value="<%=gp.getState()%> "></td></tr>

<tr><td>CONTACT NUMBER</td><td><input type="text" name="number" required="required"value="<%=gp.getNumber()%>" ></td></tr>
<tr><td>EMAIL</td><td><input type="text" name="uname" required="required"value="<%=gp.getUname()%>" ></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass" placeholder="ENTER PASSWORD"required="required" value="<%=gp.getPass()%>" ></td></tr>
<tr><td>RE-ENTER PASSWORD</td><td><input type="password" name="pass" placeholder="RE-ENTER PASSWORD" required="required" value="<%=gp.getPass()%>"></td></tr>
<tr><td><input type="submit" value="UPDATE" ></td></tr>

<%} %>
</table>

</form>


</body>
</html>