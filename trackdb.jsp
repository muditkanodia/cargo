<%-- 
    Document   : staffview
    Created on : Jul 18, 2017, 7:47:55 PM
    Author     : Mudit
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>

<%@include file="dbConn.jsp" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Your Order Status</title>
    <body>
        <h3>Your Order Status</h3>
        <% 
                    ResultSet rs = null;
                    
     String shipid=request.getParameter("shipid");

     try{
        String Query = "select * from tracking where shipid ='" +shipid+"' ";
          rs = con.createStatement().executeQuery(Query);
       
            while(rs.next()) {          
         
         
            
   %>

 
      <table>
          <tr><td><%out.println(rs.getString(13)+"");%></td><td></td><td></td><td><%out.println(rs.getString(3)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(14)+"");%><td></td></td><td></td><td><%out.println(rs.getString(4)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(15)+"");%><td></td></td><td></td><td><%out.println(rs.getString(5)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(16)+"");%><td></td></td><td></td><td><%out.println(rs.getString(6)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(17)+"");%><td></td></td><td></td><td><%out.println(rs.getString(7)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(18)+"");%><td></td></td><td></td><td><%out.println(rs.getString(8)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(19)+"");%><td></td></td><td></td><td><%out.println(rs.getString(9)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(20)+"");%><td></td></td><td></td><td><%out.println(rs.getString(10)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(21)+"");%><td></td></td><td></td><td><%out.println(rs.getString(11)+" ");%></td></tr>
          <tr><td><%out.println(rs.getString(22)+"");%><td></td></td><td></td><td><%out.println(rs.getString(12)+" ");%></td></tr>
          
           
        
            
            <tr><td></td><td></td><td><td></td><td><input type="Submit" value="Ok"></td></tr>
          <tr></tr>
        <%   }
           }
     
     catch(Exception e)
             {out.println(e);
             
             }
         
 %>
    </table>
</body>
</html>
