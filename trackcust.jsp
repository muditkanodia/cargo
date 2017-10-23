<%-- 
    Document   : trackcust
    Created on : Sep 3, 2017, 10:41:39 AM
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
 }</style>
   
</head>
<body>
    
  
                 <%
        
            String email=request.getParameter("email");
            String type=request.getParameter("type");
             String m=(String)session.getAttribute("email");
           
             %>     
             
              <% 
     Statement st =null;
     ResultSet rs =null;
   //  String s1 = request.getParameter("fn");
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/innoventa","root","root");

     st =con.createStatement();
    
     
    String Query = "select * from courieraddress where email ='" +m+"' ";
          rs=st.executeQuery(Query);
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
                <li  class="active">
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


       
        
         <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Tracking Detail</h4>
                               
                              
                            </div>
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
                                        <th>Track ID</th>
                                    	<th>Receiver's Name </th>
                                    	<th>Location</th>
                                    	<th>Action</th>
                                    	
                                    </thead>
                                    
                                    
                                    <tbody>
                                        
                                         <% String shipid="";
                                while(rs.next()) {          
                                    shipid = rs.getString("shipid");
                                   String b =rs.getString("rfname");
                                   String c=rs.getString("rlname");
                                   String l1 =rs.getString("rcity");
                                   String l2 =rs.getString("rstate");
                                     %>
                                        <tr>
                                        	<td><%out.println(shipid);%></td>
                                                    <td><%out.println(b+" "+c);%></td>
                                                     <td><%out.println(l1+", "+l2);%></td>
                                                         
             
                                                        
                                                         <td><a href=<%= "\"trackcustdetail.jsp?id=" + rs.getInt(19) + "\"" %> >Track</a></td>
                                                         
                                                          
                                        </tr>
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

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome User...Hope You'll Enjoy Our Service!!"

            },{
                type: 'info',
                timer: 5000
            });

    	});
	</script>

</html>
