
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
                    <%
 
     String username=(String)session.getAttribute("user");
    if( username!="admin")
        {}
    else{response.sendRedirect("index.jsp");}
             
        
    
 
 
 
%>
                <style>
.table {
	margin:0px;padding:0px;
	width:55%;
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
}.table table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.table tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.table table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.table table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.table tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.table tr:hover td{
	background-color:#ffaaaa;
		

}
.table td{
	vertical-align:middle;
	
	background-color:#ffffff;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:8px;
	font-size:12px;
	font-family:Arial Black;
	font-weight:normal;
	color:#000000;
}.table tr:last-child td{
	border-width:0px 1px 0px 0px;
}.table tr td:last-child{
	border-width:0px 0px 1px 0px;
}.table tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.table tr:first-child td{
		background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:16px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.table tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
}
.table tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.table tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}     
.table2 {
	margin:0px;padding:0px;
	width:55%;
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
}.table2 table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.table2 tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.table2 table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.table2 table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.table2 tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.table2 tr:hover td{
	background-color:#ffffff;
		

}
.table2 td{
	vertical-align:middle;
	
	background-color:#e5e5e5;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:7px;
	font-size:12px;
	font-family:Arial;
	font-weight:normal;
	color:#000000;
}.table2 tr:last-child td{
	border-width:0px 1px 0px 0px;
}.table2 tr td:last-child{
	border-width:0px 0px 1px 0px;
}.table2 tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.table2 tr:first-child td{
		background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);

	background-color:#4c4c4c;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.table2 tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);

	background-color:#4c4c4c;
}
.table2 tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.table2 tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
        </style>
	</head>
	<body>
           
		<div class="container">
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile"><span>  <%           out.println(username);%></span>--></div>
					<div class="icon-list">
						
					</div>
				</nav>
				<nav class="menu-side">
                                      <a href="index.html">Home</a>
					<a href="#">Individual List</a>
					<a href="regpar.jsp">Participants List</a>
				
					<a href="logout.jsp">Logout</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<header class="codrops-header">
						<div class="codrops-links">
		                                                                <div style="position: absolute; top: 3%; right: 7%; width: 100px; text-align:right;">
<h2>HI!!<%=username%><h2>
  </div>				
                                      

                                        
                                                  
						</div>
						<h1>Details </h1>
						<nav class="codrops-demos">
        
       <%  
               int num=0,paper=0,project=0,lan=0,fun=0,hunt=0,quiz=0,code=0,sell=0,photo=0,googling=0,green=0,workshop=0,sf=0,user1=0,user2=0,user3=0,user4=0,user5=0,user6=0,user7=0,total=0;                         
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection cn = DriverManager.getConnection("jdbc:odbc:utsaha17");

 PreparedStatement psss = cn.prepareStatement("select paper from participantdetails   ");
   
    ResultSet rsss = psss.executeQuery();
      while (rsss.next()) 
      {
           String pa=rsss.getString("paper");
if (pa.equals("null")){
    
}
else{
  paper++;
  
      }}
      PreparedStatement p1 = cn.prepareStatement("select project from participantdetails   ");
 
    ResultSet r1 = p1.executeQuery();
      while (r1.next()) 
      {
            String pr=r1.getString("project");
if (pr.equals("null")){
}else {
 project++;
}
      }
    PreparedStatement p2 = cn.prepareStatement("SELECT lan FROM participantdetails  ");
 
    ResultSet r2 = p2.executeQuery();
      while (r2.next()) 
    {
String er=r2.getString("lan");
if (er.equals("null")){
}else {
  lan++;
}
    }
     PreparedStatement p3 = cn.prepareStatement("select hunt from participantdetails   ");
 
    ResultSet r3 = p3.executeQuery();
      while (r3.next()) 
      {
        String hu=r3.getString("hunt");
if (hu.equals("null")){
}else {
  hunt++;
}
      }
      PreparedStatement p4 = cn.prepareStatement("select quiz from participantdetails    ");
 
    ResultSet r4 = p4.executeQuery();
      while (r4.next()) 
      {  String qu=r4.getString("quiz");
if (qu.equals("null")){
}else{
             quiz++;
}
      }
       PreparedStatement p5 = cn.prepareStatement("select fun from participantdetails   ");
 
    ResultSet r5 = p5.executeQuery();
      while (r5.next()) 
      {
           String funn=r5.getString("fun");
if (funn.equals("null")){
}else {
             fun++;
}
      }
      PreparedStatement p6 = cn.prepareStatement("select code from participantdetails   ");
 
    ResultSet r6 = p6.executeQuery();
      while (r6.next()) 
      {
          String cd=r6.getString("code");
if (cd.equals("null")){
}
else {            
             code++;
}
      }
         PreparedStatement p7 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user1'  ");
 
    ResultSet r7 = p7.executeQuery();
      while (r7.next()) 
      {
             user1= r7.getInt(1);
        }
      PreparedStatement p8 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user2'  ");
       ResultSet r8 = p8.executeQuery();
      while (r8.next()) 
      {
             user2= r8.getInt(1);
  
      }
        PreparedStatement p9 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user3' ");
       ResultSet r9 = p9.executeQuery();
      while (r9.next()) 
      {
             user3= r9.getInt(1);
        }
 
 

 
       PreparedStatement p10 = cn.prepareStatement("select sell from participantdetails   ");
 
    ResultSet r10 = p10.executeQuery();
      while (r10.next()) 
      {
          String cd=r10.getString("sell");
if (cd.equals("null")){
}
else {            
             sell++;
}
      }
 
 
 
     PreparedStatement p12 = cn.prepareStatement("select googling from participantdetails   ");
 
    ResultSet r12 = p12.executeQuery();
      while (r12.next()) 
      {
          String cd=r12.getString("googling");
if (cd.equals("null")){
}
else {            
             googling++;
}
      }
 
 
 
  PreparedStatement p13 = cn.prepareStatement("select photo from participantdetails   ");
 
    ResultSet r13 = p13.executeQuery();
      while (r13.next()) 
      {
          String cd=r13.getString("photo");
if (cd.equals("null")){
}
else {            
             photo++;
}
      }
 PreparedStatement p14 = cn.prepareStatement("select green from participantdetails   ");
 
    ResultSet r14 = p14.executeQuery();
      while (r14.next()) 
      {
          String cd=r14.getString("green");
if (cd.equals("null")){
}
else {            
             green++;
}
      }
 PreparedStatement p15 = cn.prepareStatement("select workshop from participantdetails   ");
 
    ResultSet r15 = p15.executeQuery();
      while (r15.next()) 
      {
          String cd=r15.getString("workshop");
if (cd.equals("null")){
}
else {            
             workshop++;
}
      }
 
         PreparedStatement p16 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user4'  ");
 
    ResultSet r16 = p16.executeQuery();
      while (r16.next()) 
      {
             user4= r16.getInt(1);
        }
              PreparedStatement p17 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user5'  ");
 
    ResultSet r17 = p17.executeQuery();
      while (r17.next()) 
      {
             user5= r17.getInt(1);
        }
         PreparedStatement p18 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user6'  ");
 
    ResultSet r18 = p18.executeQuery();
      while (r18.next()) 
      {
             user6= r18.getInt(1);
        }
         PreparedStatement p19 = cn.prepareStatement("select count(*) from participantdetails where registeredby='user7'  ");
 
    ResultSet r19 = p19.executeQuery();
      while (r19.next()) 
      {
             user7= r19.getInt(1);
        }
 
 
 
 
 
  total=user1+user2+user3+user4+user5+user6+user7; 
 
 
%>                           
                                                  
<p>User Wise</p>                               
           <div class="table" >
                <table >
                    <tr>
                        <td>
                           USERS
                        </td>
                        <td >
                            DETAILS
                        </td>
                                           </tr>
                    <tr>
                        <td >
                         USER1
                        </td>
                        <td>
                            <%=user1%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                           USER 2
                        </td>
                        <td>
                       <%=user2%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                            USER 3
                        </td>
                        <td>
                          <%=user3%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                            USER 4
                        </td>
                        <td>
                          <%=user4%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                            USER 5
                        </td>
                        <td>
                          <%=user5%>
                        </td>
                       <tr>
                        <td >
                            USER 6
                        </td>
                        <td>
                          <%=user6%>
                        </td>
                       <tr>
                        <td >
                            USER 7
                        </td>
                        <td>
                          <%=user7%>
                        </td>
                       
                    </tr>
                    </tr>
                    </tr>
                   <tr>
                        <td >
                        TOTAL PARTICIPANTS
                        </td>
                        <td>
                          <%=total%>
                        </td>
                       
                    </tr>
                </table>
            </div>
                        
                        
                        <p>Event Wise</p>
                        
                        
         <div class="table2"  >
                <table >
                    <tr>
                        <td >
                     Events
                        </td>
                        <td>
                     TotalParticipants
                        </td>
                      
                    </tr>
                    <tr>
                        <td>
                          PAPER
                        </td>
                        <td >
                            <%=paper%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                            PROJECT
                        </td>
                        <td>
                             <%=project%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                       LANGAME
                        </td>
                        <td>
                            <%=lan%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                   Treasure Hunt
                        </td>
                        <td>
                         <%=hunt%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                      QUIZ
                        </td>
                        <td>
                        <%=quiz%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                      FUN CORNER
                        </td>
                        <td>
                       <%=fun%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                      CODE 
                        </td>
                        <td>
                       <%=code%>
                        </td>
                      
                    </tr>
                    
                       <tr>
                        <td >
                      HOW U SELL                       </td>
                        <td>
                       <%=sell%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                GOOGLING
                        </td>
                        <td>
                       <%=googling%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                PHOTOGRAPHY
                        </td>
                        <td>
                       <%=photo%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                GO GREEN
                        </td>
                        <td>
                       <%=green%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                WORKSHOP
                        </td>
                        <td>
                       <%=workshop%>
                        </td>
                      
                    </tr>
                </table>
            </div>
                                                        
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
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

