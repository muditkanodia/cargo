<%-- 
    Document   : logindb
    Created on : July 14, 2017, 6:30:02 PM
    Author     : Mudit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   

      
      try
      {
          String type=null;
      String email=request.getParameter("email");
      String pwd=request.getParameter("psw1");
    
       Class.forName("com.mysql.jdbc.Driver")   ;
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cargo","root","");
       PreparedStatement ps=con.prepareStatement("select * from login where email=? and pass=?");
       ps.setString(1,email);
       ps.setString(2,pwd);
       
//       PreparedStatement ps1=con.prepareStatement("select name from regestration where email=? ");
//       ps1.setString(1,email);
//       
       //out.println(ps.getParameterMetaData());
       ResultSet rs=ps.executeQuery();
       
//       ResultSet rs1=ps1.executeQuery();
      // out.println(rs);
      
      
      
       if(rs.next())
        {
            type=rs.getString(3);
           session.setAttribute("email",email);
           session.setAttribute("type", type);// this line prohibits another type user to open the user page
            if(email.equals(request.getParameter("email"))
            && pwd.equals(request.getParameter("psw1")))
            {
                
                //out.println("welcome : " +" " +  " <br>");
//                if(rs1.next())
//                 {
//                     
//                 }
//                out.print("welcome : " +" " +rs.getString("name")+ " <br>" );
//                    if(type.equals("Admin"))
//                    {
//                     response.sendRedirect("Admin/Admin.jsp?msg1=Admin Login  Successfully..");  
//                    }
//                    else
               if(type.equals("Admin"))
                     {
                    response.sendRedirect("admin.jsp?msg1=User Login  Successfully..");
           }
               if(type.equals("Customer"))
                     {
                    response.sendRedirect("custlogin.jsp?msg1=User Login  Successfully..");
           }
           
               if(type.equals("Staff"))
                                     {
               response.sendRedirect("staff.jsp?msg1=User Login  Successfully..");
               
           }
                if(type.equals("Delivery Boy"))
                                     {
               response.sendRedirect("dboylogin.jsp?msg1=User Login  Successfully..");
               
           }
             
               
                
                
                
                   
            }
//             else
//            {   
//              
////             out.println("Login Failed");
//             response.sendRedirect("index.jsp?msg1=Login failed..");
//            }
            
        }
        else
            {   
              
//             out.println("Login Failed");
             response.sendRedirect("index.jsp?msg1=Login failed..");
            }
       
     
                              
             }
      catch(Exception e)
                           
      {
          out.println(e);
      }
      


	 
%>


        
    </body>
</html>


