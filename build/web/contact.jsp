<%-- 
    Document   : contact
    Created on : Jan 4, 2018, 2:08:48 PM
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
        <title>Contact</title>
    </head>
    <body>
         <%
    
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String query = request.getParameter("query");
        if(name.isEmpty()||phone.isEmpty()||email.isEmpty()||query.isEmpty())
		{
			
			out.println("<font color=red>Please fill all the fields</font>");
			
		}
		else
		{
     
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agrosales", "root", "koksheng0406");
            
         
          Statement stmt = con.createStatement();
          stmt.execute("insert into contact(name,phone,email,query)values('"+name+"','"+phone+"','"+email+"','"+query+"')");
          out.println("Data is inserted");
                        }
        %>
    </body>
</html>
