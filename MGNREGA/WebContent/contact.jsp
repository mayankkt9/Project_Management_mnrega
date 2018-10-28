<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript">
<!--

function validate_It()
{ 
var i,f=0;
temp= new String(document.userinput.userscope.value);
if(document.userinput.userscope.value == "")
{
alert(" Search field is empty \nEnter Search word/phrases and try again");
return false;
}
for(i=0;i<temp.length;i++)
{
if( temp[i]!=' ') 
{
f=1;
break;
} 
else
continue;
} 
if(f==0)
{ alert(" Search field is empty \nEnter Search word/phrases and try again");
return false;
}
return true;
}//function

function submit_It(){
document.reqdfields.scope.value = "( URL <CONTAINS>" + document.userinput.siteurl.value + " ) <AND> ( " +
document.userinput.userscope.value + " )";
document.reqdfields.action="http://search.nic.in/compass";
document.reqdfields.submit();
return true;
}

//-->
</script>
<%@include file="headerfooter.jsp" %>
</head>
<body bgcolor=#EAEAEA style="background-color: white">

     <br><br>

<table border=1  align=center>
<TR>
<TD align=middle bgColor=#990000 colSpan=6><FONT color=white size=2><B> 
 MGNREGA&nbsp;(Department of Rural Development)</B></FONT>&nbsp;</TD>

<TR>
<TD align="center" bgColor=#990000 width="187"><FONT face=Verdana color=white><FONT size=2><b>Name</b></FONT>&nbsp;</FONT></TD>
<TD width="128" align="center" bgColor=#990000><FONT face=Verdana color=white><FONT size=2><b>Phone No.Office</b></FONT>&nbsp;</FONT></TD>
<TD align="center" bgColor=#990000><FONT face=Verdana color=white><FONT size=2><b>Fax No.</b></FONT>&nbsp;</FONT></TD>
<TD align="center" bgColor=#990000 width="113"><FONT face=Verdana color=white><FONT size=2><b>Phone No. Resi.</b></FONT>&nbsp;</FONT></TD>
<TD width="204" align="center" bgColor=#990000><FONT face=Verdana color=white><FONT size=2><b>E-mail</b></FONT>&nbsp;</FONT></TD></TR>

<!-- <TR>
	<TD><FONT face=Verdana><FONT size=1>&nbsp; <br> Joint Secretary</FONT>&nbsp;</FONT></TD>
	
	<TD><FONT face=Verdana><FONT size=1>23385027</FONT>&nbsp;</FONT></TD>
	<TD width="125"><FONT face=Verdana><FONT size=1>23384703</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</font></TD> -->
	<!--<TD><FONT face=Verdana size=1><A href="mailto:dkjain[at]nic[dot]in">dkjain[at]nic[dot]in</A></FONT></TD></TR>-->

<!-- <TR>
    <TD> <FONT face=Verdana><FONT size=1>Shri. A.Vijay Kumar, PPS</FONT>&nbsp;</FONT> <br>
        </TD>
	<TD><FONT face=Verdana><FONT size=1>23385027</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23384703</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR> -->
 	<TR>
	<TD><FONT face=Verdana><FONT size=1>Smt. Aparajita Sarangi, <br>Joint Secretary</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23383553 </FONT>&nbsp;</FONT></TD>
	<TD width="125"><FONT face=Verdana><FONT size=1>23388207</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1></FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1><FONT size=1>aparajitasarangi@gmail.com</FONT></FONT></FONT></TD>
	<!--<TD><FONT face=Verdana size=1><A href="mailto:dkjain[at]nic[dot]in">dkjain[at]nic[dot]in</A></FONT></TD></TR> 
<!--<TR>
    <TD><FONT face=Verdana><FONT size=1>Sh. Niten Chandra, Director(NREGA)</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23388431</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23388431</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1><FONT face=Verdana>(0120)4274358 (Mob.) 9958445904</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1><A href="mailto:niten.chandra[at]nic[dot]in">niten.chandra[at]nic[dot]in</A></FONT></TD></TR>-->
<TR>
        <TD><FONT face=Verdana><FONT size=1> Shri K.K Sharma, PS</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23383553</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>aryasarla@yahoo.com</FONT></TD></TR>

<TR>
    <TD><FONT face=Verdana><FONT size=1> Sri. Vikram Singh Aswal, PS</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23383553</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
<TR>
        <TD><FONT face=Verdana><FONT size=1> Dr. Suparna.S.Pachouri<br>
          Director</FONT>&nbsp;</FONT></TD>
        <TD><FONT face=Verdana><FONT size=1>23382313</FONT>&nbsp;</FONT></TD>
        <TD><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD><FONT face=Verdana size=1>suparna.edu@nic.in</FONT></TD>
      </TR>

<TR>
        <TD><FONT face=Verdana><FONT size=1> Shri. A.K. Sumbly, <br>
          Deputy </FONT><FONT size=1>Secretary</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23070129</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23070129</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD><FONT face=Verdana size=1>ak.sumbly@nic.in</FONT></TD>
      </TR>
	<TR>
        <TD height="35"><FONT face=Verdana><FONT size=1> Shri.</FONT><FONT face=Verdana><FONT size=1> 
          D.K. Singh</FONT></FONT><FONT size=1>, <br>
          Director</FONT>&nbsp;</FONT></TD>
        <TD><FONT face=Verdana><FONT size=1>23073702</FONT></FONT></TD>
        <TD><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD><FONT face=Verdana size=1>dks.dca@nic.in</FONT></TD>
  </TR>
	<TR>
        <TD height="22"><FONT face=Verdana><FONT size=1> Dr. R. K. Sood,<br>
          </FONT><FONT size=1> Under Secretary</FONT>&nbsp;</FONT></TD>
        <TD><FONT face=Verdana><FONT size=1>23073787</FONT></FONT></TD>
        <TD><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD><FONT face=Verdana size=1>rk.sood<FONT size=1>@nic.in</FONT></FONT></FONT></TD>
  </TR>
	<!-- <TR>
        <TD><FONT face=Verdana><FONT size=1> Shri. Ram Raj Meena<br>
          Under Secretary</FONT>&nbsp;</FONT></TD>
        <TD><FONT face=Verdana><FONT size=1>23382406</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD><FONT face=Verdana size=1>meena.rr@nic.in</FONT></TD>
      </TR> -->
	
	<!-- <TR>
    
    <TD><FONT face=Verdana><FONT size=1>23073787</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>rk.sood@nic.in</FONT></TD>
  </TR> -->
	<TR>
    <TD><FONT face=Verdana><FONT size=1> Shri. Ram Raj Meena,<br> Under Secretary</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23382406</FONT>&nbsp;</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>meena.rr@nic.in</FONT></TD></TR>






<!--<TR>
	<TD><FONT size=1 face=Verdana> Dr. N. K. Sinha, AC (MGNREGA)</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23389431</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp; </FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1><A href="mailto:nk.sinha[at]nic[dot]in">nk.sinha[at]nic[dot]in</A></FONT></TD></TR>


<TR>
    <TD><FONT size=1 face=Verdana>Ms. Nirmala Goyal, US (MGNREGA)</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23070156</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1><FONT face=Verdana>25506116</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>

<TR>
    <TD><FONT size=1 face=Verdana>Sh. J. S. Audhkhasi, US (MGNREGA)</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23381709</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1><A href="mailto:audhkhasi.js[at]nic[dot].in">audhkhasi.js[at]nic[dot]in</A></FONT></TD></TR>-->



        <TD><FONT size=1 face=Verdana>Shri. Rajesh.Makkar,<br>
           Under Secretary</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23381343</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>makkarajesh@yahoo.co.in</FONT></TD></TR>
	<!-- <TR>
    <TD><FONT size=1 face=Verdana>Shri. S.Sanyal,<br> Under Secretary</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23381709</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>s.sanyal@nic.in</FONT></TD></TR>
	<TR> -->
    <!--<TD><FONT size=1 face=Verdana>Sh. Ram Rattan Chaudhary,<br> Under Secretary</FONT></TD> 
    <TD><FONT face=Verdana><FONT size=1>23382406</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>ramrattanchaudhary1@gmail.com</FONT></TD></TR> -->
	<!-- <TR>
    <TD><FONT size=1 face=Verdana>Shri. Murari Lal,<br> Under Secretary</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23381709</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>

<TR> -->
        <TD><FONT size=1 face=Verdana>Shri. Neeraj Kumar<br>
           Under Secretary</FONT></TD>
        <TD><FONT face=Verdana>&nbsp;</FONT></TD>
	    <TD><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	    <TD>&nbsp;</TD>
      </TR>
<!-- <TR>
    <TD><FONT size=1 face=Verdana>Shri. Vijay Aind,<br> Under Secretary</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23386311</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>vijay.aind@nic.in</FONT></TD></TR>	
<TR> -->
    <TD><FONT size=1 face=Verdana>Smt. Neeta Tahiliani,<br> Under Secretary</FONT></TD>
    <TD><FONT face=Verdana><FONT size=1>23381709</FONT></FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>neeta.tahiliani@gmail.com</FONT></TD></TR>
<TR>
    <TD><font size="1" face="Verdana">Shri. Prasanna V. Salian,<br>Assistant Commissioner</font></TD>
    <TD><FONT size="1" face=Verdana>23382836 / 23387118</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1><FONT face=Verdana>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>pv.salian@nic.in</FONT></TD></TR>
<TR>
    <TD><font size="1" face="Verdana">Dr. U. Sarangi <br>Asst. Director</font></TD>
    <TD><FONT size="1" face=Verdana>23382836</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1><FONT face=Verdana>&nbsp;</FONT></FONT></TD>
	<TD><FONT face=Verdana size=1>usarangi68@gmail.com</FONT></TD></TR>
<TR>
    <TD><FONT size=1 face=Verdana> Shri. Satish Kumar,<br> Section Officer( MGNREGA-II)</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23386412</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
	<TR>
    <TD><FONT size=1 face=Verdana> Smt. Neelam Sharma,<br> Economic Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23389431</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>ns.mord@gmail.com</FONT></TD></TR>
	<!-- <TR>
    <TD><FONT size=1 face=Verdana> Shri. P. K. Kunhiraman<br> Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23386412</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
	<TR> -->
    <!-- <TD><FONT size=1 face=Verdana> Shri. Inderjeet Singh<br> Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23387118</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>inderjeetbangar@gmail.com</FONT></TD></TR> -->
	<!-- <TR>
    <TD><FONT size=1 face=Verdana> Shri. T. Khaling<br> Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23387150</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
	<TR> -->
    <TD><FONT size=1 face=Verdana> Smt. T. Mathew <br> Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23386590</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
		<TR>
        <TD><FONT size=1 face=Verdana> Shri Sunita Bhanot<br>
          Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23386590</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	    <TD><FONT face=Verdana size=1>&nbsp;sunita.bhanot@nic.in</FONT></TD>
      </TR>
		<TR>
        <TD><FONT size=1 face=Verdana> Smt. N.THyagrajan<br>
           Section Officer</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23386590</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
	<tr>
	<td></td>
	
	</tr>
	<TR>
<TD align=middle bgColor=#990000 colSpan=6><FONT color=white size=1><i> 
 Last Updated Date: 03-July-2015</i></FONT>&nbsp;</TD>

<TR>
	
	
	
<!--<TR>
    <TD><FONT size=1 face=Verdana> Sh. Dharam Prakash, EO (MGNREGA)</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23389431</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
<TR>
    <TD><FONT size=1 face=Verdana>Mrs. Renu Walia, EO (MGNREGA)</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>23387118</FONT>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana><FONT size=1>&nbsp;</FONT>&nbsp;</FONT></TD>
	<TD><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
	<TD><FONT face=Verdana size=1>&nbsp;</FONT></TD></TR>
<TR><FONT face=Verdana></FONT>
<TR>
<TD><FONT face=Verdana><FONT size=1>Shri. Jagdish Ram Sharma, SO</FONT>&nbsp;</FONT></TD>
<TD><FONT face=Verdana><FONT size=1>23387366</FONT>&nbsp;</FONT></TD>
<TD width="20%"><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
<TD><FONT size=1>&nbsp;</FONT><FONT 
      face=Verdana>&nbsp;</FONT></TD>
<TD><FONT face=Verdana size=1><A href="mailto:"></A></FONT></TD></TR>
<TR><FONT face=Verdana></FONT>
<TR>
<TD><FONT face=Verdana><FONT size=1>Smt. Pushapa Ekka, SO</FONT>&nbsp;</FONT></TD>
<TD><FONT face=Verdana><FONT size=1>23387366</FONT>&nbsp;</FONT></TD>
<TD width="20%"><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
<TD><FONT size=1>&nbsp;</FONT><FONT 
      face=Verdana>&nbsp;</FONT></TD>
<TD><FONT face=Verdana size=1><A href="mailto:"></A></FONT></TD></TR>
<TR><FONT face=Verdana></FONT>
<TR>
<TD><FONT size=1 
      face=Verdana>Shri Sube Singh, EO</FONT></TD>
<TD><FONT face=Verdana><FONT size=1>23387118</FONT>&nbsp;</FONT></TD>
<TD width="20%"><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
<TD><FONT size=1>&nbsp;</FONT><FONT 
      face=Verdana>&nbsp;</FONT></TD>
<TD><FONT face=Verdana size=1><A href="mailto:"></A></FONT></TD></TR>
<TR><FONT face=Verdana></FONT>
<TR>
<TD><FONT size=1 
      face=Verdana>Shri. Shekher Srivastava, EO</FONT></TD>
<TD><FONT face=Verdana><FONT size=1>23387118</FONT>&nbsp;</FONT></TD>
<TD width="20%"><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
<TD><FONT size=1>&nbsp;</FONT><FONT 
      face=Verdana>&nbsp;</FONT></TD>
<TD><FONT face=Verdana size=1><A href="mailto:"></A></FONT></TD></TR>
<TR><FONT face=Verdana></FONT>
<TR>
<TD><FONT size=1 
      face=Verdana> Smt. Renu Wali, Economic Officer</FONT></TD>
<TD><FONT face=Verdana><FONT size=1>23387118</FONT>&nbsp;</FONT></TD>
<TD width="20%"><FONT size=1>&nbsp;</FONT><FONT face=Verdana>&nbsp;</FONT></TD>
<TD><FONT size=1>&nbsp;</FONT><FONT 
      face=Verdana>&nbsp;</FONT></TD></TR>-->
	  
	  </table>

</body>
</html>