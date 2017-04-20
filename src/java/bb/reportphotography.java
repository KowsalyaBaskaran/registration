/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bb;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GURU
 */
public class reportphotography extends HttpServlet {

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
       doPost(request, response);
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
         PrintWriter out=response.getWriter();
              HttpSession sa = request.getSession(true);
        int id,count=0;
        String name,dept,clgname,mobnum,r1,r2,res,yr;
          try {
 
              OutputStream file = new FileOutputStream(new File("F:\\utsaha17\\photo.pdf"));
	          Document document = new Document();
	          PdfWriter.getInstance(document, file);
 
			
 
			//Inserting Table in PDF
		
                                try{
                                	     PdfPTable table=new PdfPTable(6);
                                                         table.setWidthPercentage(100);
                            float[] columnWidths = new float[] {7f, 25f,12f ,17f, 25f,20f};
table.setWidths(columnWidths);
                          
	                     PdfPCell cell = new PdfPCell (new Paragraph ("PHOTOGRAPHY"));
 		         document.open();//PDF document opened........			       

				      cell.setColspan (6);
				      cell.setHorizontalAlignment (Element.ALIGN_CENTER);
				      cell.setPadding (10.0f);
				      cell.setBackgroundColor (new BaseColor (140, 221, 8));					               
       	
				table.addCell(cell);					               
                                          
				 table.addCell("ID");
				      table.addCell("Name");
                                      table.addCell("Year");
				      table.addCell("Department");
                                       table.addCell("Collegename");
				      table.addCell("Mobilenumber");
				
				      table.setSpacingBefore(30.0f);       // Space Before table starts, like margin-top in CSS
				      table.setSpacingAfter(30.0f);        // Space After table starts, like margin-Bottom in CSS								          
 	
                                
                                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection cn = DriverManager.getConnection("jdbc:odbc:utsaha17");
          
   
          
          
        PreparedStatement p6 = cn.prepareStatement("select  * from participantdetails where photo='yes'   ");
 
    ResultSet r6 = p6.executeQuery();
      while (r6.next()) 
      {  
         
          count++;
         id=r6.getInt("id");
          name=r6.getString("name");
          yr=r6.getString("yr");
          dept=r6.getString("department");
             clgname=r6.getString("clgname");
          mobnum=r6.getString("mobilenumber");  
           
        
        
        
        
                                       table.addCell(new Paragraph (""+id));
				      table.addCell(new Paragraph (""+name));
                                      table.addCell(new Paragraph (""+yr));
				      table.addCell(new Paragraph (""+dept));
                                       table.addCell(new Paragraph (""+clgname));
				      table.addCell(new Paragraph (""+mobnum));
				    
 
      }
                                
             document.add(table);                    
                                
                                
                        out.println(count);        
                                
                                
                                }
                                catch(Exception e){out.println(e);}
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
				
    
 
			 //Now Insert Every Thing Into PDF Document
 
				
 
					//document.add(Chunk.NEWLINE);   //Something like in HTML :-)
 
           
	              
 
				
 
				
 
					  //Something like in HTML :-)							    
 
       			           //Opened new page
					           //In the new page we are going to add list
 
		         document.close();
 
			             file.close();
 

 
        } catch (Exception e) {
            e.printStackTrace();
      
        }   out.println(count);   
        
        
                sa.setAttribute("crt", "Report generated sucessfully");
    response.sendRedirect("admin/repgen.jsp");
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
