<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    try{
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","root");
   PreparedStatement ps=con.prepareStatement("Select * from ureg Where user='"+user+"'and pass='"+pass+"'  ");
 
  System.out.println(ps);
   ResultSet d= ps.executeQuery();
  System.out.println(ps);   
  if(d.next()){
     
     session.setAttribute("user", user);
      String id=d.getString("id");
      session.setAttribute("id", id);
      System.out.println(id);
       System.out.println(user);
out.println("<script>"
                    +"alert('Welcome User !!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/uhome.jsp");
                    rd.include(request, response);
            }
    }
   catch(Exception e){
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("uhome.jsp");
     rd.include(request, response);
            }
    
    %>
