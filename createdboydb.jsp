<%-- 
    Document   : createdeliveryboydb
    Created on : Jul 18, 2017, 8:44:07 PM
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
            int psw=generateRandomNumber(1000,8888);
            String psw1=Integer.toString(psw);
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
            String type="Delivery Boy";
            String dcity=request.getParameter("dcity");
            String dstate=request.getParameter("dstate");
            //String pass=request.getParameter("psw");
            
            try{
       /* Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo","root",""); */
        PreparedStatement ps=con.prepareStatement("insert into deliveryboy(fname,lname,email,type,dcity,dstate,pass) values(?,?,?,?,?,?,?)");
        ps.setString(1,fname);
        ps.setString(2,lname);
        ps.setString(3,email);
        ps.setString(4,type);
        ps.setString(5,dcity);
        ps.setString(6,dstate);
        ps.setString(7,psw1);
      

        ps.executeUpdate();
       
            }
            
 
            catch(Exception e)
                    {
                        out.print(e);
                            }
           /*  try{
           PreparedStatement ps1=con.prepareStatement("insert into login values(?,?,?)");
           ps1.setString(1,email);
           ps1.setString(2,psw1);
           ps1.setString(3,type);
           ps1.executeUpdate();}
            catch(Exception e1)
                    {
                        out.print(e1);
                            }*/
            %>
    </body>
</html>
