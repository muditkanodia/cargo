<%-- 
    Document   : courieraddress
    Created on : Jul 14, 2017, 3:03:47 AM
    Author     : Mudit
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insertion</title>
    </head>
    <body>
         <%!
             
          
             
    public int generateRandomNumber(int start,int end)
    {
        Random random=new Random();
        long fraction=(long)((end-start+1)*random.nextDouble());
        return((int)(fraction+start));
    }    
    %>
    
    
     <%
           
            
            String email=request.getParameter("email");
            String type=request.getParameter("type");
            
       
             %>     
             
             
        <%int ship=generateRandomNumber(10000,88889);
            String shipid=Integer.toString(ship);
        
            String ffname=request.getParameter("sfname");
            String flname=request.getParameter("slname");
            String fadd=request.getParameter("sadd");
            String fpin=request.getParameter("spin");
            String fcity=request.getParameter("scity");
            String fstate=request.getParameter("sstate");
            String fcoun=request.getParameter("scountry");
            String fmob=request.getParameter("smobile");
            String femail=request.getParameter("semail");
            
            String rfname=request.getParameter("rfname");
            String rlname=request.getParameter("rlname");
            String radd=request.getParameter("radd");
            String rpin=request.getParameter("rpin");
            String rcity=request.getParameter("rcity");
            String rstate=request.getParameter("rstate");
            String rcoun=request.getParameter("rcountry");
            String rmob=request.getParameter("rmobile");
            String remail=request.getParameter("remail");
            
            try{
      
        PreparedStatement ps=con.prepareStatement("insert into courieraddress values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,ffname);
        ps.setString(2,flname);
        ps.setString(3,fadd);
        ps.setString(4,fpin);
        ps.setString(5,fcity);
        ps.setString(6,fstate);
        ps.setString(7,fcoun);
        ps.setString(8,fmob);
        ps.setString(9,femail);
        
        ps.setString(10,rfname);
        ps.setString(11,rlname);
        ps.setString(12,radd);
        ps.setString(13,rpin);
        ps.setString(14,rcity);
        ps.setString(15,rstate);
        ps.setString(16,rcoun);
        ps.setString(17,rmob);
        ps.setString(18,remail);
         ps.setString(19,shipid);
           ps.setString(20,email);
        
        ps.executeUpdate();
       
            }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
            %>
            <!--response.sendRedirect("User/UserPage.jsp?msg1=User Login  Successfully..");-->
            <% session.setAttribute("shipid",shipid); %>
         <% response.sendRedirect("shipment.jsp"); %>
    </body>
</html>
