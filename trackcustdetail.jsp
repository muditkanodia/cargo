<%-- 
    Document   : trackcustdetail
    Created on : Sep 3, 2017, 12:24:46 PM
    Author     : Mudit
--%>

<!doctype html>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Customer Login</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <style> a:hover {
text-decoration: underline;
color: orange;
 }
 #tsize tr,td{
     width:20%;
     height:40%;
 }</style>
</head>
<body>
    
  
                 <%
           
            String shipid=request.getParameter("id");
            String email=request.getParameter("email");
            String type=request.getParameter("type");
            String m=(String)session.getAttribute("email");
            //String shipid=(String)session.getAttribute("trackshipid");
            
           
             %>     
             
             

<div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="custlogin.jsp" >
                    
                    <img src="logo_cargo.png" alt="@@"/>
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="custlogin.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li>
                    <a href="custdetail.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Edit Details</p>
                    </a>
                </li>
                
                <li>
                    <a href="passwordchcust.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Change Password</p>
                    </a>
                </li>
                <li>
                    <a href="courieraddresscust.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Add Shipment</p>
                    </a>
                </li>
                <li class="active">
                    <a href="trackcust.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Track</p>
                    </a>
                </li>
                <li>
                    <a href="custview.jsp">
                        <i class="pe-7s-science"></i>
                        <p>View</p>
                    </a>
                </li>
               
                <li>
                    <a href="notifcust.jsp">
                        <i class="pe-7s-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>
			
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    
                    
                    

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                 <p><%out.println(m);%></p>
                            </a>
                        </li>
                       
                        
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

                            <% 
         
         
         String sname="",slname="",rname="",rlname="",semail="",remail="",sadd1="",sadd2="",smob="",radd1="",radd2="",rmob="";
          email = (String)session.getAttribute("email");
                    ResultSet rs = null;

     try{
        String Query = "select * from courieraddress where shipid ='" +shipid+"' ";
          rs = con.createStatement().executeQuery(Query);
       
            while(rs.next()) {          
            sname =rs.getString(1)+" "+rs.getString(2);
          rlname=rs.getString(2);
          
            sadd1=rs.getString(3);
            sadd2=rs.getString(5)+", "+rs.getString(6)+", "+rs.getString(4);
            smob=rs.getString(8);
             semail=rs.getString(9);
             
              rname =rs.getString(10)+" "+rs.getString(11);
          rlname=rs.getString(11);
          
            radd1=rs.getString(12);
            radd2=rs.getString(14)+", "+rs.getString(15)+", "+rs.getString(13);
            rmob=rs.getString(17);
             remail=rs.getString(18);
            
            }
            
    }
     
     catch(Exception e)
             {out.println(e);
             
             }
         
 %>
 
 
 <% 
         
         
         String ptype="",ptime="",pdate="",pmode="";
          email = (String)session.getAttribute("email");
                   

     try{
        String Query = "select * from shipment where shipid ='" +shipid+"' ";
          rs = con.createStatement().executeQuery(Query);
       
            while(rs.next()) {          
            ptype =rs.getString(1);
          pdate=rs.getString(3);
          
            ptime=rs.getString(4);
            pmode=rs.getString(5);
         
            }
            
    }
     
     catch(Exception e)
             {out.println(e);
             
             }
         
 %>

              
  <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Track Details</h4>
                            </div>
                            <div class="content">
                                    
                               <form action="custlogin.jsp" method="post">
                                   <table id="tsize">
                                       
                                     <tr>
                                                    <td>Shipment ID</td><td>
                                                        
                                                        <%out.println(shipid);%></td>
                                                    
                                                </tr>
                                         
                                            <tr>
                                                    <td>Sender's Name</td><td>
                                                        <%out.println(sname);%></td>
                                                    <td></td>
                                                    <td style="margin-left: 100px;">Receiver's Name</td><td>
                                                        <%out.println(rname);%></td>
                                                </tr>
                                           
                                                <tr  >
                                                    <td>Sender's Email</td><td 
                                                                               >
                                                        <%out.println(semail);%></td>
                                                    <td></td>
                                                    <td>Receiver's Email</td><td>
                                                        <%out.println(remail);%></td>
                                                </tr>
                                                
                                            
                                                    <tr>
                                                        <td>Sender's Address</td><td>
                                                            <%out.println(sadd1+", ");%></td>
                                                        <td></td>
                                                        <td> Receiver's Address</td><td>
                                                            <%out.println(radd1+", ");%></td>
                                                        
                                                    </tr>                                                
                                              
                                           
                                                    <tr style="padding-top: 40px;">
                                                    <td>Sender's Mobile</td><td>
                                                        <%out.println("    "+smob);%></td>
                                                    <td></td>
                                                    <td>Receiver's Mobile</td>
                                                    
                                                    <td> <%out.println(rmob);%></td>
                                            </tr>
                                           
                                                <tr>
                                                    <td>Shipment Type</td><td>
                                                        <%out.println("    "+ptype);%></td>
                                                    <td></td>
                                                    <td> Booking Date</td><td>
                                                        <%out.println("    "+pdate);%></td>
                                                </tr>
                                            
                                                <tr>
                                                    <td>Shipment Mode</td><td>
                                                        <%out.println("    "+pmode);%></td>
                                                    <td>     </td>
                                                    <td>Booking Time</td><td>
                                                        <%out.println("    "+ptime);%></td>
                                                </table>
                                            
                                  <% 
     Statement st =null;
    
   //  String s1 = request.getParameter("fn");
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/innoventa","root","root");

     st =con.createStatement();
    
     
    String Query = "select * from tracking where shipid ='" +shipid+"' ";
          rs=st.executeQuery(Query);
 %>
                                 
 
 
                                   
                                   

                                   

                                  
                                   
                                   

                                   
 <div class="content">
                                
                              <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                          
                                <p class="category"></p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>Date & Time</th>
                                    	<td></td><td></td>
                                    	<th>Status</th>
                                    	
                                    	
                                    </thead>
                                    
                                    
                                    <tbody>
                                        
                                         <% 
                                while(rs.next()) {          
                                   %>
                                   
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
          
          <%
              }
%>
                                        
                                       
                                       
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>

                    </div>
                    

                </div>
            </div>
        </div>
                                   
                                   </form>
    

                    </div>
                    

                </div>
            </div>
        </div>
 
    </div>
</div>



 
    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>



</html>
