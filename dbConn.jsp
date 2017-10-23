<%@ page language="java" import="java.sql.*"%>
<%
    Connection con = null;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    
    String sURL="jdbc:mysql://localhost:3306/cargo";
    String sUserName="root";
    String sPwd="";
    
    con = DriverManager.getConnection(sURL,sUserName,sPwd);
    
//    Statement stmt = conn.createStatement();
//    ResultSet rs = stmt.executeQuery("select * from tableName");
%>
<html>
<head>
<title>Simple JSP Java database connectivity</title>
</head>
<body>

</body>
</html>
<%
//  if(con!=null)
//    con.close();
%>