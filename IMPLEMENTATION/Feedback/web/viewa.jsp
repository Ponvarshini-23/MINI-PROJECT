<%@page import="java.sql.*"%>
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
    <nav class="navbar navbar-expand-lg" style=" background-color: #0C8195;">
        <div class="container" >
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
                        <a href="addclg.jsp" class="nav-link smoothScroll">Add Colleges</a>
                    </li>
                    <li class="nav-item">
                        <a href="clgdtls.jsp" class="nav-link">College Details</a>
                    </li>
                    <li class="nav-item">
                        <a href="vusrs.jsp" class="nav-link ">view users</a>
                    </li>
                    <li class="nav-item">
                        <a href="vstud.jsp" class="nav-link smoothScroll">View Students</a>
                    </li>
                    <li class="nav-item">
                        <a href="vfeed.jsp" class="nav-link smoothScroll">View Feedback</a>
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
                           
              <main >
                  
                    
                   
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
                                      
                                        
                                       
                                        
                    }
                    th{
                                        color: skyblue;
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
    
            <h3 class="h4" align="center" style=" color:  #F1C111; font-size: 23px; margin-top:-60px; margin-left:100px; "> View College Details!! </h3>
		
                          
            <table style="color: skyblue;  ">
                       <tr>					
                           <td style=" color: white;"> College Image</td>
            <td style=" color: white;"> College Name</td>
            <td style=" color: white;"> Academics</td>
            <td style=" color: white;"> Department</td>
            <td style=" color: white;"> Placement</td>
	    <td style=" color: white;"> Activities</td>
            <td style=" color: white;"> Facilities</td>
            <td style=" color: white;"> About us</td>	
            <td style=" color: white;"> Location</td>
            </tr>
            <%                    
                        String dis =request.getParameter("Dis");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
                        PreparedStatement query=con.prepareStatement("select * from post where district='"+dis+"' ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                            <tr>
                            <td><img src="profile/<%=rs.getString("image")%>" alt="image" style="width:80px; height: 80px;"></td>
                            <td><%=rs.getString("college")%></td>
                           <td><%=rs.getString("academics")%></td>
                           <td><%=rs.getString("department")%></td>
                            <td><%=rs.getString("placement")%></td>
                            <td><%=rs.getString("activites")%></td>
                            <td><%=rs.getString("facilities")%></td>
                            <td><%=rs.getString("about")%></td>
                           <td><%=rs.getString("location")%></td></tr>
                            <%}%><br></table>  
                            <br>
                    <br><br><br><br></div></div></div>
          
          
          </main>
   
                        </div>

                       
                    </div>
               </div>
     </section>


     <!-- ABOUT -->



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