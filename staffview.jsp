<%-- 
    Document   : staffview
    Created on : Aug 29, 2017, 3:31:14 AM
    Author     : Mudit
--%>

<!doctype html>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>

<%@include file="dbConn.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Staff Login</title>

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
    
  
          
    
                                 <% String fname="",lname="",email="",desig="",add1="",add2="",mob="",qua="",deg="";
          email = (String)session.getAttribute("email");
                    ResultSet rs = null;

     try{
        String Query = "select * from staff where email ='" +email+"' ";
          rs = con.createStatement().executeQuery(Query);
       
            while(rs.next()) {          
            fname =rs.getString(1);
          lname=rs.getString(2);
          desig = rs.getString(5);
            add1=rs.getString(7)+", "+rs.getString(8);
            add2=rs.getString(10)+", "+rs.getString(9)+", "+rs.getString(11);
            mob=rs.getString(13);
            qua=rs.getString(14);
            deg=rs.getString(15);
            
            }
            
    }
     
     catch(Exception e)
             {out.println(e);
             
             }
         
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
                    <a href="staff.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li >
                    <a href="staffdetail.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Edit Details</p>
                    </a>
                </li>
                
                <li>
                    <a href="passwordchst.jsp">
                        <i class="pe-7s-science"></i>
                        <p>Change Password</p>
                    </a>
                </li>
                <li>
                    <a href="courieraddress.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Add Shipment</p>
                    </a>
                </li>
                <li  class="active">
                    <a href="staffview.jsp">
                        <i class="pe-7s-science"></i>
                        <p>View</p>
                    </a>
                </li>
               
                <li>
                    <a href="notifstaff.jsp">
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
                                <h4 class="title">Staff View</h4>
                            </div>
                            <div class="content">
                                    
                               <form action="staff.jsp" method="post">
                                   
                                   <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Name</label>
                                               <%out.println(fname+" ");%><%out.println(lname);%>
                                            </div>
                                        </div>
                                    </div>
                                            
                                            <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <%out.println("    "+email);%>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Designation</label>
                                                <%out.println(desig);%>
                                            </div>
                                        </div>
                                    </div>
                                   
                                  
          
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <%out.println(add1);%>
                                                <%out.println(add2);%>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Mobile No.</label>
                                               <%out.println(mob+" ");%>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Qualification</label>
                                               <%out.println(qua);%>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Degree</label>
                                              <%out.println(deg);%>
                                            </div>
                                        </div>
                                    </div>
                                   
                                   

                                   

                                  
                                   <div>
                                    <button type="submit" class="btn btn-info btn-fill pull-right">Ok</button>
                                   </div>
                                    <div class="clearfix"></div>
                                   

                                   

                                   
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
