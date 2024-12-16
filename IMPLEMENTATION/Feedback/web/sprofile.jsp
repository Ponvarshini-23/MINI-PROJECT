<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
                        <a href="sprofile.jsp" class="nav-link smoothScroll">Profile</a>
                    </li>
                   
                    <li class="nav-item">
                        <a href="feed.jsp" class="nav-link ">Give Feedback </a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="index.html" class="nav-link smoothScroll">logout</a>
                    </li>
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
                                        margin-left: 270px;
                                        height: auto;
                                       
                        		border-collapse: collapse;
                        		border:2px solid #0056b3;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        color: black;
                                        border-color: black;
                                        margin-top:-380px;
                                        
                    }
                    th{
                                        color: white;
                                        
                    }
                    table{
                                        height: auto;
                                        width: 400px;
                        }
                        	
                        	
                        	
                </style>

  
        <div class="header-text">
         
             <h3 class="h4" align="center" style=" color:#F1C111; font-size: 23px; margin-bottom: 400px; font-family: monospace; margin-top: -50px; margin-left: 300px; "> Profile... </h3>
							
                 
                           
                           
      
  <%                    
      String user=session.getAttribute("user").toString();
      String regno=session.getAttribute("regno").toString();
      Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
                        PreparedStatement query=con.prepareStatement("select * from sreg Where regno='"+regno+"' and user='"+user+"'");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                         <table>
                            <tr>
                            <tr align="center"><td colspan="2"><img src="profile/<%=rs.getString("profile")%>" alt="image" style="width:80px; height: 80px;"></td></tr>
                            <th>ID</th><td><%=rs.getString("regno")%></td></tr>
                            <tr><th>Username</th><td><%=rs.getString("user")%></td></tr>
                            <tr><th>Email</th><td><%=rs.getString("email")%></td></tr>
                            <tr><th>Gender</th><td><%=rs.getString("gender")%></td></tr> 
                            <tr><th>Mobile</th><td><%=rs.getString("mobile")%></td></tr>
                            <tr><th>Location</th><td><%=rs.getString("location")%></td></tr>
                      
                            
                     <%}%></table> </form>  
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
