<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    try{
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
   PreparedStatement ps=con.prepareStatement("Select * from sreg Where user='"+user+"'and pass='"+pass+"'  ");
 
  System.out.println(ps);
   ResultSet d= ps.executeQuery();
  System.out.println(ps);   
  if(d.next()){
     
    
      session.setAttribute("user", user);
      String regno=d.getString("regno");
      session.setAttribute("regno", regno);
out.println("<script>"
                    +"alert('Welcome User !!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/shome.jsp");
                    rd.include(request, response);
            }
    }
   catch(Exception e){
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
     rd.include(request, response);
            }
    
    %>
