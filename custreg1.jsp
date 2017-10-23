<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
 <%@include file="dbConn.jsp" %>
<html class="no-js"> <!--<![endif]-->
   
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--Responsive Meta-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Title-->
        
        <!--Bootstrap Css-->
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        <!--Font-awesome-->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <!--Fonts Form Google Web Fonts-->
        <link href='http://fonts.googleapis.com/css?family=Lato:400,300,400italic,700,900,700italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto:500' rel='stylesheet' type='text/css'>
        <!--Responsive Mobile Menu-->
        <link rel="stylesheet" href="css/slicknav.css" />
        <!--Revolation Slider-->
        <link href="rs-plugin/css/settings.css" rel="stylesheet">
        <!--Carousel Slider-->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <!--Main Style Css-->
        <link href="style.css" rel="stylesheet">
        <!--Responsive-->
        <link href="css/responsive.css" rel="stylesheet">


        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
             <style>  form.m {
                     float:right;
    padding-top: 70px;
                 padding-right: 170px;}
    
    div.aa {
    color: black ;
     font-family: "times new roman";
     font-size: 180%;
     
    
}
img.k {
                     float:left;
    padding-top: 190px;
                 padding-left: 170px;}

 </style>
  <script type="text/javascript">
            function count(x)
            {
                var a;

                if (window.XMLHttpRequest)
                {
                    a = new XMLHttpRequest();
                }
                else
                {
                    a = new ActiveXobject("Microsoft.XMLHTTP");


                }

                a.onreadystatechange = function()
                {
                    if (a.readyState == 4 && a.status == 200)
                    {
                        document.getElementById("mydiv").innerHTML = a.responseText;
                    }
                }
                a.open("post", "uidstate_ajax.jsp?cid=" + x, true);
                a.send();
            }

            function stat(y)
            {
                var a;

                if (window.XMLHttpRequest)
                {
                    a = new XMLHttpRequest();
                }
                else
                {
                    a = new ActiveXobject("Microsoft.XMLHTTP");


                }

                a.onreadystatechange = function()
                {
                    if (a.readyState == 4 && a.status == 200)
                    {
                        document.getElementById("mydiv1").innerHTML = a.responseText;
                    }
                }
                a.open("post", "uidcity_ajax.jsp?sid=" + y, true);
                a.send();
            }
        </script> 
        <title>FC Transport | Registration Page</title>
    </head>
    <body>
       <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!--Start Mobile Menu Area-->
        <div id="preloader">
            <i class="fa fa-spinner fa-pulse fa-3x fa-fw margin-bottom"></i>
        </div>		
        <div class="mobile_menu_area">
			<nav>
            <ul id="mobile_menu">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="service.html">Service</a></li>
                <li><a href="#">Pages</a>
                    <ul>
                        <li><a href="index2.html"></a>Home Two</li>
                        <li><a href="service-datails.html">Service Datials</a></li>
                        <li><a href="get-a-quate.html">Get a quate</a></li>
                        <li><a href="single-post.html">single posst</a></li>
                        <li><a href="faq.html">faqs</a></li>
                        <li><a href="404.html">not found</a></li>
                    </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="storage-location.html">Team</a></li>
                <li><a href="contact-us.html">Contact Us</a></li>
            </ul>
			</nav>
        </div>
        <!--End Mobile Menu Area-->
        
        <!--Start Header area  -->
        <div class="header_area">
             <div class="header_top_area">
                <div class="container">
                    <div class="row">  
                        <div class="col-md-4 col-lg-4">
                            <div class="header_top_menu">
                                <ul>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>  
                        <div class="col-md-2 col-lg-2 col-md-offset-6 col-lg-offset-6">
                            <div class="header_social_bookmark">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom_area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-lg-3">
                            <div class="logo">
                                <a href="index.html"><img src="logo2_2_2.png" alt="">
                                  
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-md-offset-1 col-lg-offset-1">
                            <div class="opening_time s_header">
                                <div><i class="fa fa-clock-o"></i></div>
                                <p class="contact_title">Opening Hours</p>
                                <p class="uppercase">Mon to fri - 9:00 am to 9:00 pm</p>
                                <p class="uppercase">sat 9:00 am to 5:00 pm</p>
                            </div>
                        </div>
                        <div class="col-md-2 col-lg-2">
                            <div class="call_us s_header">
                                <div><i class="fa fa-phone"></i></div>
                                <p class="contact_title">Call Us</p>
                                <p>+91 9956733406</p>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3">
                            <div class="email_us s_header">
                                <div><i class="fa fa-envelope-o"></i></div>
                                <p class="contact_title">Email Us</p>
                                <p class="uppercase">muditkanodia@gmail.com</p>
                                <p class="uppercase">help@fctransport.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--
        <!--End Header Area-->
        <!--Start Slider Area -->
        <section class="slider_area">
         
                            
                        </li>
                    </ul>
                </div>
            </div>
            <div class="mainmenu_area">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9 col-lg-9">
                                <div class="mainmenu nav">
									<nav>
										<ul id="nav">
											<li class="current"><a href="home.jsp">Home</a>
												<ul>
													
												</ul>
											</li>
											<li><a href="about-us.html">About Us</a></li>
											<li><a href="service.html">Service</a></li>
											<li><a href="#">Pages</a>
												<ul>
													<li><a href="service-datails.html">Service Datials</a></li>                                       <li><a href="get-a-quate.html">Get a quate</a></li>
													<li><a href="single-post.html">single posst</a></li>
													<li><a href="faq.html">faqs</a></li>
													<li><a href="404.html">not found</a></li>
												</ul>
											</li>
                                                                                        <li><a href="home.jsp?pagename=login.jsp">login</a></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="storage-location.html">Team</a></li>
											<li><a href="contact-us.html">Contact Us</a></li>
											<li>
												
											</li>                            
										</ul>
									</nav>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </section>
        <div>
        <div>
            <img src="slider_3.jpg" class="k" alt="reg" >

        </div>           
            <div>   

 <div class="signup_form">
  <form action="custregdb.jsp" class="m" method="post">
      
      
       <div  >
           <div>   <h2 style="color: #00A8FF ;" >REGISTRATION FORM </h2> </div>
      <table>
          <tr>
              <td>First Name</td><td></td><td>Last Name</td>
          </tr>
          <tr>
              <td><input type="text" style="border-color:#00A8FF" name="firstname" placeholder="Your name"></td>
              <td></td>
              <td><input type="text" name="lastname" placeholder="Your last name"></td>
          </tr>
          
          <tr><td>Email</td><td></td><td><input type="text" name="email"></td></tr>
          <tr><td>Password</td><td></td><td><input type="password" name="pass"></td></tr>

          <tr><td>Address</td></tr>
          <tr><td>House/Flat No.</td><td></td><td><input type="text" name="houseno"></td></tr>
          <tr><td>Locality/Street</td><td></td><td><input type="text" name="locality"></td></tr>
          <tr><td>Pin code</td><td></td><td><input type="text" name="pin"></td></tr>
         <td><b>Country</b></td><td></td>
              <td>
                  
              <select name="country" onchange="count(this.value)">

                            <option>--Select--</option>
                            <%
                                try {
//                                    Class.forName("com.mysql.jdbc.Driver");
//                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/st", "root", "");
                                    PreparedStatement ps = con.prepareStatement("select * from country");
                                    ResultSet rs = ps.executeQuery();
                                    while (rs.next()) {
                            %>
                            <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option> 
                            <%
                                    }
                                } catch (Exception e) {
                                    out.println(e);
                                }
                            %>                
                        </select>
              </td></tr>
           <td><b>State</b></td><td></td>
                        <td id="mydiv"><label>
                                <select name="state">
                                    <option>--Select--</option>
                                </select>
                        </td>
                        </tr>
                        <tr>
                            <td><b>City</b></td><TD></TD>
                        <td id="mydiv1"><label>
                                <select name="city">

                                    <option>--Select--</option>

                                </select>
                        </td>
                        </tr>
          
         
          <tr><td>Mobile</td><td></td><td><input type="text" name="mobile"></td></tr>
          <tr><td>Type</td><td></td><td><input type="text" name="type" value='Customer'></td></tr>
          <tr></tr>
          <tr><td></td><td></td><td><input type="Reset" value="Reset"></td><td></td><td><input type="Submit" value="Submit"></td></tr>
    </table> 
       </div>
  </form>
 </div>
     </div>
        </div>
  
       
                            
        
        <!--jQuery-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!--Bootstrap-->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <!--Revolation Slider-->
        <script src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <!--Carousel Slider-->
        <script src="js/owl.carousel.min.js"></script>
        <!--Mobile Menu Js-->
        <script src="js/jquery.slicknav.min.js"></script>
        <!--Active jQuery-->
        <script src="js/main.js"></script>
    </body>
</html>