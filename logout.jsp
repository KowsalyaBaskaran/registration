<%-- 
    Document   : logout
    Created on : Nov 8, 2015, 9:51:19 PM
    Author     : Shivaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Logout</title>
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
         

    	
      
        </style>
	</head>
	<body>
              <%
 
     String username=(String)session.getAttribute("user");
    if(username!=null)
        {
 
   
             
        }
     else 
         {
         out.println("You are already not login <a href=\"index.jsp\">Back</a>");
     }
 
 
 
%>
		<div class="container">
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile"><span>  <%           out.println(username);%></span></div>
					<div class="icon-list">
						
					</div>
				</nav>
				<nav class="menu-side">
                                             <a href="index.html">Home</a>
					<a href="index.jsp">Registration</a>
					<a href="index.jsp">Event List</a>
					<a href="index.jsp">Registered Users Details</a>
					<a href="#">Logout</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<header class="codrops-header">
						<div class="codrops-links">
						
						</div>
						
						<nav class="codrops-demos">
                           <h1>Logged Out Sucessfully</h1>
                            <% session.removeAttribute("user");%>
						</nav>
					<h4>
                                          	<a href="index.html">Click Here to Login </a>  
                                            <h4>	
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
