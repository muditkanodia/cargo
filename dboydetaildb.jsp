<%-- 
    Document   : insertion
    Created on : Jul 18, 2017, 08:27:44 PM
    Author     : Mudit
--%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insertion</title>
    </head>
    <body>
        <%String email = (String)session.getAttribute("email");
        
            String house=request.getParameter("houseno");
            String locality=request.getParameter("locality");
            String pin=request.getParameter("pin");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String coun=request.getParameter("country");
            String mob=request.getParameter("mobile");
            String edu=request.getParameter("qualification");
            
          
         out.println(email);
            
            try{
          // PreparedStatement ps=null;     
         // PreparedStatement ps = null;
         PreparedStatement ps=  con.prepareStatement("update deliveryboy set house='"+house+"' where email='"+email+"'");ps.executeUpdate();
           ps= con.prepareStatement("update deliveryboy set locality='"+locality+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update deliveryboy set pin='"+pin+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update deliveryboy set city='"+city+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update deliveryboy set state='"+state+"' where email='"+email+"'");ps.executeUpdate();
         ps= con.prepareStatement("update deliveryboy set country='"+coun+"' where email='"+email+"'");ps.executeUpdate();
         ps=con.prepareStatement("update deliveryboy set mob='"+mob+"' where email='"+email+"'");ps.executeUpdate();
         ps=con.prepareStatement("update deliveryboy set edu='"+edu+"' where email='"+email+"'");ps.executeUpdate();
        // ps= con.prepareStatement("update deliveryboy set deg='"+deg+"' where email='"+email+"'");ps.executeUpdate();
                
                  
              
            }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
            response.sendRedirect("dboylogin.jsp");
            %>
    </body>
</html>
