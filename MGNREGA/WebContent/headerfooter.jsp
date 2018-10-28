<!DOCTYPE html>
<html>
<head>
<title>Sticky Header and Footer</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #6FB810;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
<style type="text/css">
/* Reset body padding and margins */
body {
    margin:0;
    padding:0;
}
/* Make Header Sticky */
#header_container {
    background:#eee;
    border:1px solid #666;
  
    left:0;
    position:fixed;
    width:100%;
    top:0;
}
#header {
    line-height:20px;
    margin:0 auto;
   
    text-align:center;
    overflow: auto;
}
/* CSS for the content of page. I am giving top and bottom padding of 80px to make sure the header and footer do not overlap the content.*/
#container {
    margin:0 auto;
    overflow:auto;
    padding:80px 0;
    width:940px;
    
}
#content {
}

/* Make Footer Sticky */
#footer_container {
    background:#6FB810;
    border:1px solid #666;
    bottom:0;
    height:40px;
    left:0;
    position:fixed;
    width:100%;
}
#footer {
    line-height:20px;
    margin:0 auto;
    width:940px;
    text-align:center;
    overflow: auto;
}
</style>

</head>
<body>
<!-- BEGIN: Sticky Header -->
<div id="header_container">
    <div id="header">
    <img src="mgnrega_banner.gif" alt="Mountain View" style="width:700px;height:60px;">
    <img src="mgnrega_quote_new.jpg" alt="MAHATMA GANDHI" style="width:240px;height:60px;">
    <ul>
    <li><a href="index.jsp">HOME</a></li>
  <li><a class="active" href="act2005.pdf">ACT 2005</a></li>
 <li><a href="districts.pdf">DISTRICTS</a></li>
  <li><a href="news.jsp">NEWS</a></li>
  <li><a href="contact.jsp">CONTACT</a></li>
  <li><a href="feedback.jsp">FEEDBACK</a></li>
  <li><a href="Gallery.jsp">GALLERY</a></li>
</ul>
    </div>
</div>
<!-- END: Sticky Header -->
<!-- BEGIN: Page Content -->
<div id="container">
    <div id="content">
       
    </div>
</div>
<!-- END: Page Content -->
<!-- BEGIN: Sticky Footer -->
<div id="footer_container">
    <div id="footer">
    	<a href="">Terms & Conditions | Privacy Policy | Hyperlink Policy | Copyright Policy | Accessibility Statement | Disclaimer | Help</a> <br>
        Copyright © 2014 Ministry of Rural Development, Government of India. All Rights Reserved.
    </div>
</div>
<!-- END: Sticky Footer -->
</body>
