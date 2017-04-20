<%-- 
    Document   : registeredparticipants
    Created on : Nov 11, 2015, 1:29:31 PM
    Author     : Shivaguru
--%>
<%@page import="java.sql.PreparedStatement"%>
<%-- 
    Document   : userfunction
    Created on : Nov 8, 2015, 11:53:29 AM
    Author     : Shivaguru
--%>

<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
                <title>Participant Details</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
                 <style>


.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#ffaa56; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:7px;
	font-size:11px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ff7f00 5%, #bf5f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf5f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #bf5f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf5f00");	background: -o-linear-gradient(top,#ff7f00,bf5f00);

	background-color:#ff7f00;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#f4e3e3;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff7f00 5%, #bf5f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf5f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #bf5f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf5f00");	background: -o-linear-gradient(top,#ff7f00,bf5f00);

	background-color:#ff7f00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}


	
      
        </style>
	</head>
	<body>
              <%
 
     String username=(String)session.getAttribute("user");
    if(username=="null")
        {
 
         response.sendRedirect("index.jsp");
             
        }
     else 
         {
        
     }
 String error=(String)session.getAttribute("error");
 String id=(String)session.getAttribute("id");
 
 
%>
		<div class="container">
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile"><span>  <%           out.println(username);%></span></div>
					<div class="icon-list">
						
					</div>
				</nav>
				<nav class="menu-side">
                                        <a href="#">Home</a>
					<a href="userfunction.jsp">Registration</a>
					<a href="eventlist.html">Event List</a>
					<a href="#">Registered Users Details</a>
					<a href="../logout.jsp">Logout</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<header class="codrops-header">
						<div class="codrops-links">
						
                                                         <div style="position: absolute; top: 3%; right: 7%; width: 100px; text-align:right;">
<h2>HII!!<%=username%><h2>
  </div>           

                                        
                                                  
						</div>
						<h1>Details </h1>
						<nav class="codrops-demos">
        
       <%  
               int num=0;
               int sum=0;
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection cn = DriverManager.getConnection("jdbc:odbc:utsaha17");

 PreparedStatement psss = cn.prepareStatement("select count(*) from participantdetails where registeredby=? ");
   psss.setString(1, username);   
    ResultSet rsss = psss.executeQuery();
      while (rsss.next()) 
      {
             num = rsss.getInt(1);
 // out.println(num);
      }
   PreparedStatement kkss = cn.prepareStatement("select sum(amount) from participantdetails where registeredby=? ");
   kkss.setString(1, username);   
    ResultSet qqq = kkss.executeQuery();
      while (qqq.next()) 
      {
          int q=qqq.getInt(1);
             sum +=q;
 // out.println(num);
      }
    //out.println(sum);
      
      
      
      
      
      
      
      
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection cnn = DriverManager.getConnection("jdbc:odbc:utsaha17");
 PreparedStatement ps = cnn.prepareStatement("select * from participantdetails where registeredby=? order by id ");
 ps.setString(1, username);
 
 ResultSet rs = ps.executeQuery(); %>
 <table class="CSSTableGenerator">
   
         <tr>
             <td>ID</td><td>Name</td><td>Year</td><td>Department</td>
             <td>College Name</td><td>Gender</td><td>Mobilenumber</td><td>Emailid</td>
             <td>Amount</td>
         </tr>
 

    
 <% while (rs.next()) {%>
<tr>
<td>
<%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td><td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td>
<td><%=rs.getString(21)%></td>

</tr>


<%}%>  

<tr><td colspan="8">Totalnumber of registered participants</td><td colspan="7 " ><%=num%></td></tr>
<tr><td colspan="8">Totalnumber of amount</td><td colspan="7 " ><%=sum%></td></tr>

                                                    
                                                    
    
</table>                                               
                                                    
                                                  
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
						</nav>
						
					</header>
					<!-- Related demos -->
                                    		<section class="related">
					sponcers
					</section>
				</div>
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>

