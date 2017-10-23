<%-- 
    Document   : shipmentdb
    Created on : Jul 14, 2017, 3:29:09 AM
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
          
        <%
           String shipid = (String)session.getAttribute("shipid"); out.println(shipid);
           
            String type=request.getParameter("type");
            String weight=request.getParameter("weight");
            String pdate=request.getParameter("pdate");
            String ptime=request.getParameter("ptime");
            String mode=request.getParameter("mode");
            
            
            try{
       /* Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo","root",""); */
       
        PreparedStatement ps=con.prepareStatement("insert into shipment values(?,?,?,?,?,?)");
     
         PreparedStatement ps1=con.prepareStatement("insert into tracking(shipid) values(?)");       ps1.setString(1,shipid);ps1.executeUpdate();
        ps.setString(1,type);
        ps.setString(2,weight);
        ps.setString(3,pdate);
        ps.setString(4,ptime);
        ps.setString(5,mode);
       ps.setString(6,shipid);
       
       
       
        ps.executeUpdate();
        ps1.executeUpdate();
       
            }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
            %>
    </body>
</html>

