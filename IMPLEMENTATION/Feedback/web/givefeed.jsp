<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>

     <title>Feedback
    </title>
<!--

DIGITAL TREND

https://templatemo.com/tm-538-digital-trend

-->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/aos.css">
     <link rel="stylesheet" href="css/owl.carousel.min.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/templatemo-digital-trend.css">

</head>
<body>

     <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.html">
              <i class="fa fa-line-chart"></i>
             Student feedback
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                 <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="index.html" class="nav-link smoothScroll">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="sprofile.jsp" class="nav-link smoothScroll">Profile</a>
                    </li>
                   
                    <li class="nav-item">
                        <a href="feed.jsp" class="nav-link ">Give Feedback </a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="index.html" class="nav-link smoothScroll">logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


     <!-- HERO -->
     <section class="hero hero-bg d-flex justify-content-center align-items-center">
               <div class="container">
                    <div class="row">

                        
                   <style>
                    tr,td{
                                  
                                        font-size: 15px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left: 100px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid black;
                                        border-radius: 30px;
                        		padding:5px;
                        		text-align:center;
                                        color:black;
                                        margin-top: -5px;
                                        
                                       
                                        
                    }
                    th{
                                        color: white;
                                        width:200px;
                    }
                    table{
                                        height: auto;
                                        width: auto;
                        }
                           
                        	
                        	
                        	
                </style>

    
        <div class="header-text">
            <br>
            <br>
              				
                <div class="container">
    
            <h3 class="h4" align="center" style=" color:  #F1C111; font-size: 23px; margin-top: -100px;  margin-left:100px; "> View College Details </h3>
							
               		
			 <%                    
                        String college =request.getParameter("college");
                        
                            if(college.equalsIgnoreCase("others")){
                                                        %>
                         <form action="submit.jsp">
                         <table style="color: skyblue;  ">
                            <tr>
                            
                            <tr><th>College name</th><td><input type="text" name="college" value=""></td></tr>
                            <tr><th>District</th><td><input type="text" name="district" value=""></td></tr>
                             <tr><th>About</th><td><input type="text" name="about" value=""></td></tr>
                            <tr><th>Feedback</th><td><input type="text" name="feed" value=""></td></tr>
                            
                             <tr><td align="center" colspan="2"><button type="submit" style=" color: #2f323a; font-size: 15px;   ">Submit</button> </td></tr>
                            </table>
            
            
            
            
                        <%
                            }else
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
                        PreparedStatement query=con.prepareStatement("select * from post where college='"+college+"' ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                                                       
                         %>
                       
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         
                         <form action="submit.jsp">
                         <table style="color: skyblue;  ">
                            <tr>
                            <tr align="center"><td colspan="2"><img src="profile/<%=rs.getString("image")%>" alt="image" style="width:80px; height: 80px;"></td></tr>
                           <tr><th>Academics</th><td><input type="text" name="academics" value="<%=rs.getString("academics")%>"readonly></td></tr>
                           <tr><th>College</th><td><input type="text" name="college" value="<%=rs.getString("college")%>"readonly></td></tr>
                            <tr><th>Department</th><td><input type="text" name="department" value="<%=rs.getString("department")%>" readonly></td></tr>
                            <tr><th>placement</th><td><input type="text" name="placement" value="<%=rs.getString("placement")%>" readonly></td></tr>
                            <tr><th>Activities</th><td><input type="text" name="activites" value="<%=rs.getString("activites")%>" readonly></td></tr>
                            <tr><th>Facilities</th><td><input type="text" name="facilities" value="<%=rs.getString("facilities")%>"readonly></td></tr>
                            <tr><th>District</th><td><input type="text" name="district" value="<%=rs.getString("district")%>"readonly></td></tr>
                             <tr><th>About as</th><td><input type="text" name="about" value="<%=rs.getString("about")%>" readonly=""></td></tr>
                            <tr><th>Feedback</th><td><input type="text" name="feed" value=""></td></tr>
                             <tr><td align="center" colspan="2"><button type="submit" style=" color: #2f323a; font-size: 15px;   ">Submit</button> </td></tr>
                            
                            <%}%></table>  
                            
                    <br><br><br><br></div></div></div>
          
          
          </main>
                        </div>

                        <div class="col-lg-6 col-12">
                          <div class="hero-image" data-aos="fade-up" data-aos-delay="300">

                            <img src="images/working-girl.png" class="img-fluid" alt="working girl">
                          </div>
                        </div>

                    </div>
               </div>
     </section>


     <!-- ABOUT -->
  >


     <!-- PROJECT -->
    


     <!-- SCRIPTS -->
     <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/aos.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>
