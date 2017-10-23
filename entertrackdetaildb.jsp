<%-- 
    Document   : entertrackdetaildb
    Created on : Jul 17, 2017, 11:00:15 AM
    Author     : Mudit
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date;" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
         Date date = new Date();
        String a= (String)(dateFormat.format(date));
        out.println(a);
             
        String count="";int i=3 ,k=0;
            String shipid=request.getParameter("shipid");
            String shiploc=request.getParameter("shiploc");
            try{
                String sql="select * from tracking where shipid="+shipid;
              PreparedStatement ps1=con.prepareStatement(sql);
              ResultSet rs=ps1.executeQuery();
              if(rs.next())
            {
               i=rs.getInt("counter");
            }out.print(i);
              k=i+1;
             // ps1.executeUpdate(); 
            }
            catch(Exception e)
                    {
                        out.print(e);
                            }
          //  i=Integer.parseInt(count);
            
       // Class.forName("com.mysql.jdbc.Driver");
       // Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo","root","");
     try{
     //  PreparedStatement ps=con.prepareStatement("update tracking set shipmentid=?,counter=?,track1=?,track2=?,track3=?,track4=?,track5=?,track6=?,track7=?,track8=?,track9=?,track10=? where shipmentid='shipid' ");
        PreparedStatement ps=  con.prepareStatement("update tracking set counter='"+k+"' where shipid='"+shipid+"'");ps.executeUpdate();
         if(i==3)
         { ps=  con.prepareStatement("update tracking set track1='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
         ps=  con.prepareStatement("update tracking set time1='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==4)
              { ps=  con.prepareStatement("update tracking set track2='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
              ps=  con.prepareStatement("update tracking set time2='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==5)
              { ps=  con.prepareStatement("update tracking set track3='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
              ps=  con.prepareStatement("update tracking set time3='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
          else if(i==6)
              { ps=  con.prepareStatement("update tracking set track4='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
              ps=  con.prepareStatement("update tracking set time4='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==7)
              { ps=  con.prepareStatement("update tracking set track5='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time5='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==8)
              { ps=  con.prepareStatement("update tracking set track6='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time6='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==9)
              { ps=  con.prepareStatement("update tracking set track7='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time7='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==10)
              { ps=  con.prepareStatement("update tracking set track8='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time8='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
          else if(i==11)
              { ps=  con.prepareStatement("update tracking set track9='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time9='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
         else if(i==12)
              { ps=  con.prepareStatement("update tracking set track10='"+shiploc+"' where shipid='"+shipid+"'");ps.executeUpdate();
               ps=  con.prepareStatement("update tracking set time10='"+a+"' where shipid='"+shipid+"'");ps.executeUpdate();}
                 
                        
             
        
        //count=Integer.toString(i);
       
 
        ps.executeUpdate();
     }
 
            catch(Exception e)
                    {
                        out.print(e);
                            }//out.println(i);
            %>
    </body>
</html>
