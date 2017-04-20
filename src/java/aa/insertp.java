/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aa;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
/**
 *
 * @author Kowsalya
 */
public class insertp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet insertp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet insertp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession sa = request.getSession(true);
         PrintWriter out=response.getWriter();
        String str1, str2, str3, str4, str5, str6,str7, str8, str9, str10,str11, str12, str13,str14,str15,str16,str17,str18,str19,str20,str21,str22,str23;
	str1=request.getParameter("name");
	str2=request.getParameter("year");
	str3=request.getParameter("dept");
	str4=request.getParameter("clgname");
       str5=request.getParameter("gender");
       str6=request.getParameter("mobnum");
	str7=request.getParameter("emailid");
	str8=request.getParameter("paper");
	str9=request.getParameter("project");
        str10=request.getParameter("lan");
        str11=request.getParameter("hunt");
 str12=request.getParameter("quiz");

	str13=request.getParameter("fun");
	str14=request.getParameter("code");
        str15=request.getParameter("sell");
	str16=request.getParameter("photo");
        str17=request.getParameter("googling");
 str18=request.getParameter("green");
  str19=request.getParameter("workshop");
  str20=request.getParameter("amount");
  String tab="participantdetails";
         Date date = new Date();
        String user=(String)sa.getAttribute("user");
     
    int count=0;
    out.println(str1);
    out.println(str2);
    out.println(str3);
    out.println(str4);
    out.println(str5);
    out.println(str6);
    out.println(str7);
    out.println(str8);
    out.println(str9);
    out.println(str10);
    out.println(str11);
    out.println(str12);
    out.println(str13);
  out.println(str14);
    out.println(str15);
    out.println(str16);
    out.println(str17);
    out.println(str18);
    out.println(str19);
    out.println(str20);
    
    out.println(user);
   
     if(user!=null){
        try{
         Connection c=DriverManager.getConnection("jdbc:odbc:utsaha17");
           
       PreparedStatement pss = c.prepareStatement("select * from "+tab+" where mobilenumber=? or emailid=?");
 pss.setString(1, str6);
  pss.setString(2, str7);
 ResultSet rss = pss.executeQuery();
 while (rss.next()){
 sa.setAttribute("id", "already registered !!!");
     count=1;
 response.sendRedirect("user/userfunction.jsp");}
         
   if(count==0){      
         
    Statement s =c.createStatement();

          
int i=s.executeUpdate("insert into participantdetails values('"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"','"+str7+"','"+str8+"','"+str9+"','"+str10+"','"+str11+"','"+str12+"','"+str13+"','"+str14+"','"+str15+"','"+str16+"','"+str17+"','"+str18+"','"+str19+"','"+str20+"','"+user+"')");    
 
			if(i>0){
                            Connection cn = DriverManager.getConnection("jdbc:odbc:utsaha17");
 PreparedStatement ps = cn.prepareStatement("select * from participantdetails where name=?");
 ps.setString(1, str1);
 ResultSet rs = ps.executeQuery();
 while (rs.next()){
 String id=rs.getString(1);
  sa.setAttribute("id", id);
  
 }
     out.println(str1);
    response.sendRedirect("user/userfunction.jsp");
                        }
   
   
   }
   
   
   }
        catch(Exception e)
        {out.println(e);}}
                }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
