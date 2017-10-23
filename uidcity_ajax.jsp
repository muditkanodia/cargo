<%@page import="java.sql.*"%><%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select name='city'>
                    <option>----select----</option>
       <%
           String s=request.getParameter("sid");
                        try
        {
//              Class.forName("com.mysql.jdbc.Driver");
//    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/st","root","");
PreparedStatement ps=con.prepareStatement("select * from cities where city_state=?");
ps.setString(1, s);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
                    %>
                    <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option> 
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
