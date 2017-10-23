<%-- 
    Document   : insertion
    Created on : Jul 12, 2017, 11:27:44 AM
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
            String deg=request.getParameter("deg");
          
         out.println(email);
            
            try{
          // PreparedStatement ps=null;     
         // PreparedStatement ps = null;
         PreparedStatement ps=  con.prepareStatement("update staff set house='"+house+"' where email='"+email+"'");ps.executeUpdate();
           ps= con.prepareStatement("update staff set locality='"+locality+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update staff set pin='"+pin+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update staff set city='"+city+"' where email='"+email+"'");ps.executeUpdate();
        ps=  con.prepareStatement("update staff set state='"+state+"' where email='"+email+"'");ps.executeUpdate();
         ps= con.prepareStatement("update staff set country='"+coun+"' where email='"+email+"'");ps.executeUpdate();
         ps=con.prepareStatement("update staff set mob='"+mob+"' where email='"+email+"'");ps.executeUpdate();
         ps=con.prepareStatement("update staff set edu='"+edu+"' where email='"+email+"'");ps.executeUpdate();
         ps= con.prepareStatement("update staff set deg='"+deg+"' where email='"+email+"'");ps.executeUpdate();
                
                  
               /* 
                   // ps = con.prepareStatement("update staff house = ? where id = email" );               
               String a = "insert into staff set house=? where email="+email;
                String b = "update staff set locality=? where email="+email;
                 String c = "update staff set pin=? where email="+email;
                  String d = "update staff set city=? where email="+email;
                 String e = "update staff set state=? where email="+email;
                 String f = "update staff set country=? where email="+email;
                 String g = "update staff set mob=? where email="+email;
                 String h = "update staff set edu=? where email="+email;
                 String i = "update staff set deg=? where email="+email;

                //String sql = "insert into staff values(?,?,?,?,?.?,?,?,?,?,?,?,?,?,?) WHERE email="+email;
                  ps = con.prepareStatement(a);
                  ps = con.prepareStatement(b);
                  ps = con.prepareStatement(c);
                  ps = con.prepareStatement(d);
                  ps = con.prepareStatement(e);
                  ps = con.prepareStatement(f);
                  ps = con.prepareStatement(g);
                  ps = con.prepareStatement(h);
                  ps = con.prepareStatement(i);
                  
                
  
        
        ps.setString(7,house);
        ps.setString(8,locality);
        ps.setString(9,pin);
        ps.setString(10,city);
        ps.setString(11,state);
        ps.setString(12,coun);
        ps.setString(13,mob);
     
        ps.setString(14,edu);
        ps.setString(15,deg);*/
     
        
        
       // ps.executeUpdate();
       
            }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
            response.sendRedirect("staffview.jsp");
            %>
    </body>
</html>
