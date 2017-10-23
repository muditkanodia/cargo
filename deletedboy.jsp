<%-- 
    Document   : deleteStaff
    Created on : Aug 22, 2017, 7:32:44 PM
    Author     : Mudit
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>



<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>24x7 Couriers | Admin </title>

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
     Statement st =null;
     ResultSet rs =null;
   //  String s1 = request.getParameter("fn");
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/innoventa","root","root");

     st =con.createStatement();
     rs=st.executeQuery("select * from deliveryboy");
 %>
  
             
             
             

<div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="admin.jsp" >
                    
                    <img src="logo_cargo.png" alt="@@"/>
                </a>
            </div>

            <ul class="nav">
                <li >
                    <a href="admin.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="createstaff.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Add Staff</p>
                    </a>
                </li>
                
                <li>
                    <a href="deletestaff.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Delete Staff</p>
                    </a>
                </li>
                <li>
                    <a href="createdboy.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Add Delivery Boy</p>
                    </a>
                </li>
                <li class="active">
                    <a href="deletedboy.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Delete Delivery Boy</p>
                    </a>
                </li>
                
                <li>
                    <a href="notifadmin.jsp">
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
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>


       

                    

               

                    


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="admin.jsp" style="color: #1F77D0;">
                              
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#" style="color: #1F77D0";>
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#" style="color: #1F77D0";>
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#" style="color: #1F77D0";>
                               Blog
                            </a>
                        </li>
                    </ul>
                   
                </nav>
                
            </div>
            
        </footer>
       
         
          <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Delivery Boy Detail</h4>
                            </div>
                            <div class="content">
                                
                              <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Delete User</h4>
                                <p class="category"></p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>Email</th>
                                    	<th>First Name</th>
                                    	<th>Last Name</th>
                                    	<th>Action</th>
                                    	
                                    </thead>
                                    
                                    
                                    <tbody>
                                        
                                         <% 
                                while(rs.next()) {          
                                 String email = rs.getString("email");
                                   String b =rs.getString("fname");
                                   String c=rs.getString("lname");
                                     %>
                                        <tr>
                                        	<td><%out.println(email);%></td>
                                                    <td><%out.println(b);%></td>
                                                     <td><%out.println(c);%></td>
                                                         <% session.setAttribute("email",email); %>
             
                                                         <td><a href="deletedboydb.jsp">Delete</a></td>
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
