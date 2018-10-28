<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%@include file="headerfooter.jsp" %>
<style type="text/css">
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:auto;
    width:800px;
    float:left;
    padding:5px;	      
}
#section {
    width:400px;
    float:left;
    padding:10px;	
    background-color:#eeeeee; 	 
}
</style>
</head>

<body bgcolor="pink" background="nrega-work.jpg">

<div id="section">
<center><h1>Welcome to Login</h1></center>

<form action="LoginSrv" method="post">

<table border="1" align="center" cellspacing="15" cellpadding="15" frame="box" bgcolor="#eeeeee">

<tr>
<td>Enter Username:</td>
<td><input type="text" name="uname" required="required" placeholder="Enter Username"></td>
</tr>

<tr>
<td>Enter Password:</td>
<td><input type="password" name="pass" required="required" placeholder="Enter password"></td>
</tr>

<tr>
<td>Login As:</td>
<td><select name="type">

<option value="BDO">BDO</option>
<option value="GramPanchayat">GramPanchayat</option>
</select></td>
</tr>


<tr>
<td><input type="submit" value="Login"></td>
<!-- <td><a href="BDORegis.jsp">Register</a></td>-->
</tr>

<!--  <br><br><input type="submit" value="Login">

</form>

<a href="BDORegis.jsp">Register</a>
-->
</table>
<%

Object obj=session.getAttribute("flag");
if(obj != null){
%>


<%} %>
</div>
<DIV id="nav">
<h2><b>INTRODUCTION</b></h2>
National Rural Employment Guarantee Act 2005

National Rural Employment Guarantee Act 2005 (or, NREGA No 42) was later renamed as the "Mahatma Gandhi National Rural Employment Guarantee Act" (or, MGNREGA), is an Indian labour law and social security measure that aims to guarantee the 'right to work'. It aims to ensure livelihood security in rural areas by providing at least 100 days of wage employment in a financial year to every household whose adult members volunteer to do unskilled manual work.[1][2]

Starting from 200 districts on 2 February 2006, the NREGA covered all the districts of India from 1 April 2008.[3] The statute is hailed by the government as "the largest and most ambitious social security and public works programme in the world".[4] In its World Development Report 2014, the World Bank termed it a "stellar example of rural development".[5]

The MGNREGA was initiated with the objective of "enhancing livelihood security in rural areas by providing at least 100 days of guaranteed wage employment in a financial year, to every household whose adult members volunteer to do unskilled manual work".[6] Another aim of MGNREGA is to create durable assets (such as roads, canals, ponds, wells). Employment is to be provided within 5 km of an applicant's residence, and minimum wages are to be paid. If work is not provided within 15 days of applying, applicants are entitled to an unemployment allowance. Thus, employment under MGNREGA is a legal entitlement.[citation needed]

MGNREGA is to be implemented mainly by gram panchayats (GPs). The involvement of contractors is banned. Labour-intensive tasks like creating infrastructure for water harvesting, drought relief and flood control are preferred.[citation needed]

Apart from providing economic security and creating rural assets, NREGA can help in protecting the environment, empowering rural women, reducing rural-urban migration and fostering social equity, among others."[7]

The law provides many safeguards to promote its effective management and implementation. The act explicitly mentions the principles and agencies for implementation, list of allowed works, financing pattern, monitoring and evaluation, and most importantly the detailed measures to ensure transparency and accountability.[citation needed]

</DIV>
</body>
</html>