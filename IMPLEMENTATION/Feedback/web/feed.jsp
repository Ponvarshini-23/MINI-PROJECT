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
                            table,tr,td{
                                margin-left: 250px;
                                margin-top: -350px;
                                padding:6px;
                            }
                        </style>
                        
                       <h3 class="h4" align="center" style=" color:  #F1C111; font-size: 23px; margin-bottom: 400px;  margin-left: 230px; "> Search college and Give Feedback </h3>
			<form action="givefeed.jsp">
                        <table>
                           
                            <tr>
                                <td>
                                    <select name="college" style="width: 200px;">
                                        <option>Choose the College</option>
                          <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
                        PreparedStatement p=con.prepareStatement("Select * from post group by college");
                        ResultSet rs=p.executeQuery();
                        while(rs.next()){  %>
                           <option><%=rs.getString("college")%></option>
                           <%}%>
                           <option>Others</option>
                           
                                   
                          </select>
                           
                                </td>
                            </tr>
                             <tr><td align="center" colspan="2"><button type="submit" style=" color: #2f323a; font-size: 15px;   ">Submit</button> </td></tr>
                            
                        </table></form>
                        </div>
                        </div>
                   
                </main>

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