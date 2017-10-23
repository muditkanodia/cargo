<%-- 
    Document   : uidstate_ajax
    Created on : Jan 1, 2006, 12:43:48 AM
    Author     : ppt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %><%@include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><select name='state' onchange="stat(this.value)">
                    <option>----select----</option>
       <%
           String count=request.getParameter("cid");
      
                        try
        {
//              Class.forName("com.mysql.jdbc.Driver");
//    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/st","root","");
PreparedStatement ps=con.prepareStatement("select * from state where country=?");
ps.setString(1, count);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
                    %>
                    <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option> 
                 <%
}
        }
                        
catch(Exception e)
{
    out.println(e);
}
                 %>
                </select>
    </body>
</html>
