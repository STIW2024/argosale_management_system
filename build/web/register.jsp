<%-- 
    Document   : register
    Created on : Dec 8, 2017, 9:34:06 PM
    Author     : KokshengGue
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
       
        <%
    
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String mobile = request.getParameter("contact");
        if(name.isEmpty()||email.isEmpty()||pass.isEmpty()||mobile.isEmpty())
		{
			
			out.println("<font color=red>Please fill all the fields</font>");
			
		}
		else
		{
     
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agrosales", "root", "koksheng0406");
            
         
          Statement stmt = con.createStatement();
          stmt.execute("insert into register(name,email,pass,contact)values('"+name+"','"+email+"','"+pass+"','"+mobile+"')");
          out.println("You Have Been Succesful Register");
        
            
        
                
                        
                        }
        
        
      
        %>
    </body>
</html>

