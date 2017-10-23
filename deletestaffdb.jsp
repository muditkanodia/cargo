<%-- 
    Document   : deletestaffdb
    Created on : Jul 19, 2017, 12:20:49 AM
    Author     : Mudit
--%>



<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1>JSP Page</h1>
        <%   
             try {
               String email = (String)session.getAttribute("email");

             
           // int id =(Integer)request.getAttribute("id");
                  out.println(email);
                PreparedStatement ps=con.prepareStatement("delete from login where email= '"+ email + "'");
                 int i = ps.executeUpdate();
                   PreparedStatement ps1=con.prepareStatement("delete from staff where email= '"+ email + "'");
                 int i1 = ps1.executeUpdate();
                 /* PreparedStatement ps = null;
                  String sql = "DELETE FROM login WHERE email="+email;
                   ps = con.prepareStatement(sql);
                   int i = ps.executeUpdate();
                   
                    PreparedStatement ps1 = null;
                  String sql1 = "DELETE FROM staff WHERE email="+email;
                   ps1 = con.prepareStatement(sql1);
                   int i1 = ps1.executeUpdate();*/
 if((i > 0)&&(i1>0) )              
{%>
<%
out.print("Record Deleted Successfully");
%>
<% 
}
else
{%>
<%
out.println("There is a problem in Deleting Record."); 
out.print("Check Manually in your Database");
} %>
<%
}
                //  PreparedStatement ps=con.prepareStatement("delete from reg where id='" + id2 + "'" );
                   //ResultSet rs = ps.executeQuery(); 
                   
                         //  ps.executeUpdate();

           

           catch(Exception e)
           {out.println(e);
           }

           
   // ResultSet rs=null;
  //  Statement st=null;

   // rs = st.executeQuery("delete from reg where id='dlt'");
   // response.sendRedirect("mudit.jsp");
%>
    </body>
</html>
