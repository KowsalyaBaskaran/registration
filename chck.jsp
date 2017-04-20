<%-- 
    Document   : chck
    Created on : Nov 8, 2015, 11:31:39 AM
    Author     : Shivaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String user = request.getParameter("uname");
            String pass = request.getParameter("upass");
      
          
 
         
            if (user.toLowerCase().trim().equals("admin") && pass.toLowerCase().trim().equals("admin")) {
               response.sendRedirect("admin/adminfunctions.jsp");
                session.setAttribute("user", user);
            }
           else if(user.equals("user1")&&pass.equals("user1")||user.equals("user2")&&pass.equals("user2")||user.equals("user3")&&pass.equals("user3")||user.equals("user4")&&pass.equals("user4")||user.equals("user5")&&pass.equals("user5")||user.equals("user6")&&pass.equals("user6")||user.equals("user7")&&pass.equals("user7"))
               { response.sendRedirect("user/userfunction.jsp");
                   session.setAttribute("user", user);
           }
           else if(user.equals("code")&&pass.equals("code"))
           {
               response.sendRedirect("userspanel.jsp");
                   session.setAttribute("user", user);
           }
            else if(user.equals("quiz")&&pass.equals("quiz"))
           {
               response.sendRedirect("userspanel.jsp");
                   session.setAttribute("user", user);
           }
               else if(user.equals("googling")&&pass.equals("googling"))
           {
               response.sendRedirect("userspanel.jsp");
                   session.setAttribute("user", user);
           }
                                 else if(user.equals("gaming")&&pass.equals("gaming"))
           {
               response.sendRedirect("userspanel.jsp");
                   session.setAttribute("user", user);
           }
                else if(user.equals("ppt")&&pass.equals("ppt"))
           {
               response.sendRedirect("panel.jsp");
                   session.setAttribute("user", user);
           }
                  else if(user.equals("project")&&pass.equals("project"))
           {
               response.sendRedirect("panelhack.jsp");
                   session.setAttribute("user", user);
           }
                               else if(user.equals("shortfilm")&&pass.equals("shortfilm"))
           {
               response.sendRedirect("panelhack.jsp");
                   session.setAttribute("user", user);
           }
                                     else if(user.equals("hackathon")&&pass.equals("hackathon"))
           {
               response.sendRedirect("panelcodehack.jsp");
                   session.setAttribute("user", user);
           }
                                                else if(user.equals("treasurehunt")&&pass.equals("treasurehunt"))
           {
               response.sendRedirect("panelcodehack.jsp");
                   session.setAttribute("user", user);
           }  
          
            else if(user.equals("certificate")&&pass.equals("certificate"))
           {
               response.sendRedirect("certificate.jsp");
                   session.setAttribute("user", user);
           }
           else {response.sendRedirect("index.jsp");}
               
 
 
%>

    </body>
</html>
