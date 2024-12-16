

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String college=request.getParameter("college");
String about=request.getParameter("about");
String district=request.getParameter("district");
String feed=request.getParameter("feed");
System.out.print(college);

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
PreparedStatement p=con.prepareStatement("insert into feed (college,about,district,feedback) values ('"+college+"','"+about+"','"+district+"','"+feed+"')");
System.out.println(p);
                    p.executeUpdate();
                    System.out.println(p);
                    out.println("<script>"); 			
                    out.println("alert(\"Give Feedback Sucessfully\")");
                    out.println("</script>");
                                    
                     RequestDispatcher rd=request.getRequestDispatcher("feed.jsp");
                    rd.include(request,response);

}
catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("feed.jsp");
                    rd.include(request,response);
                }


%>