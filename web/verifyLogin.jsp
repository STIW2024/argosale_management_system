<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Login</title>
    </head>
    <body>
        <%!
            String email;
            String pass ;
         %>
        <% 
        PreparedStatement ps = null;
        ResultSet rs = null;
        String a = "SELECT * FROM register WHERE email=? and pass=?";
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agrosales","root","koksheng0406");
        ps = con.prepareStatement(a);
        String username = request.getParameter("email");
        String pass = request.getParameter("pass");
        ps.setString(1, username);
        ps.setString(2, pass);
        rs = ps.executeQuery();
        if(rs.next()){
            email = rs.getString("email");
            pass = rs.getString("pass");
            if(email.equals(email)&&pass.equals(pass)){
                response.sendRedirect("category1.jsp");
            }
        
        
         }else{
             out.println("user not found");
         }
        rs.close();
        ps.close();
        }
        catch(Exception e){
            out.println(e);
        }
        %>
    </body>
</html>
