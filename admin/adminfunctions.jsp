<%-- 
    Document   : userfunction
    Created on : Nov 8, 2015, 11:53:29 AM
    Author     : Shivaguru
--%>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
                <title>Admin Functions</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
                 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
               

                
                
                
                <style>
   




	
      
        </style>
   <script>  

</script> 
	</head>
	<body>
              <%
 
     String username=(String)session.getAttribute("user");
    if( username!="admin")
        {
   
          //response.sendRedirect("index.jsp");   
        }
    else{response.sendRedirect("index.html"); }
    
 
 
 
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
					<a href="seperate.jsp">Individual List</a>
					<a href="regpar.jsp">Participants List</a>
				    <a href="reportgen.jsp">Certificate Generation</a>
                                          <a href="repgen.jsp">Report Generation</a>
					<a href="logout.jsp">Logout</a>
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
						
						<nav class="codrops-demos">
                                                    <a href="seperate.jsp">Individual List</a>
					<a href="regpar.jsp">Participants List</a>
                                        <a href="reportgen.jsp">Certificate Generation</a>
                                          <a href="repgen.jsp">Report Generation</a>
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
