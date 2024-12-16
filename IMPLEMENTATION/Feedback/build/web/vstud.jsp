<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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

                <h2> View users</h2>        
                        
                        <style>
                        table,td,tr,th{
                           border-collapse: collapse;
                           border: 2px solid black  ;
                           text-align: center;
                           font-weight: bold;
                           padding: 5px;
                           background-color:#4ECDC4;
                           font-size: 15px;
                           font-weight: bolder;
                           margin-left: 300px;
                           margin-top: -220px; 
                           width: 5%;
                           height: 5%;
                           color: black;
                      }
                      th{
                          color:#c80000;
                      }
                      h2{
                          font-size: 30px;
                          margin-left: 530px;
                          color: #F1C111;
                          margin-top: -280px;
                      }
               </style>
           	 <table>					
            <tr>  
            <th>Profile</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Date Of Birth</th>
            <th>Gender</th>
            <th>Mobile</th>
            <th>Location</th>
           </tr>
                          
                     <%                    
      
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
                        PreparedStatement query=con.prepareStatement("select * from sreg  " );
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                        
                          <tr>
                         <td><img src="profile/<%=rs.getString("profile")%>" alt="image" style="width:60px; height: 60px; border-radius: 30px;"></td>
                           <td><%=rs.getString("user")%></td>
                           <td><%=rs.getString("email")%></td>
                           <td><%=rs.getString("dob")%></td>
                           <td><%=rs.getString("gender")%></td>
                           <td><%=rs.getString("mobile")%></td>
                           <td><%=rs.getString("location")%></td>
                            <%}%>
            </tr></table>
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