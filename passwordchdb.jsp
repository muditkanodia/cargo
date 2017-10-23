<%-- 
    Document   : passwordchdb
    Created on : Jul 17, 2017, 2:11:41 AM
    Author     : Mudit
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");

           String emailnew=(String)session.getAttribute("email");

String pass = "";
int id = 0;
try {
PreparedStatement ps=con.prepareStatement("select * from login where email= '"+ emailnew + "'");
PreparedStatement ps1=con.prepareStatement("select * from staff where email= '"+ emailnew + "'");
PreparedStatement ps2=con.prepareStatement("select * from deliveryboy where email= '"+ emailnew + "'");
ResultSet rs = ps.executeQuery();

if (rs.next()) { 
pass = rs.getString("pass");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {

//int i = ps.executeUpdate("update login set pass='"+ Newpass + "'");
int i=ps.executeUpdate("update login set pass='"+Newpass+"' where email='"+emailnew+"'");
ps1.executeUpdate("update staff set pass='"+Newpass+"' where email='"+emailnew+"'");
ps2.executeUpdate("update deliveryboy set pass='"+Newpass+"' where email='"+emailnew+"'");
out.println("Password changed successfully");

con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>