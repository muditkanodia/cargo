<%-- 
    Document   : insertion
    Created on : Jul 12, 2017, 11:27:44 AM
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
        
            String fname=request.getParameter("firstname");
            String lname=request.getParameter("lastname");
            String email=request.getParameter("email");out.println(email);
            String pass=request.getParameter("pass");
            String house=request.getParameter("houseno");
            String locality=request.getParameter("locality");
            String pin=request.getParameter("pin");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String coun=request.getParameter("country");
            String mob=request.getParameter("mobile");
            String type=request.getParameter("type");
            
            try{
         /*Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo","root","");*/
        PreparedStatement ps=con.prepareStatement("insert into custregisteration values(?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,fname);
        ps.setString(2,lname);
        ps.setString(3,email);
        ps.setString(4,pass);
        ps.setString(5,house);
        ps.setString(6,locality);
        ps.setString(7,pin);
        ps.setString(8,city);
        ps.setString(9,state);
        ps.setString(10,coun);
        ps.setString(11,mob);
        ps.setString(12,type);
        
        ps.executeUpdate();
       
            }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
              try{
           PreparedStatement ps1=con.prepareStatement("insert into login values(?,?,?)");
           ps1.setString(1,email);
           ps1.setString(2,pass);
           ps1.setString(3,type);
           ps1.executeUpdate();}
            catch(Exception e1)
                    {
                        out.print(e1);
                            }
           
            %>
    </body>
</html>
