<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header0.jsp"%>
        <title>Sub_Category</title>
    </head>
    <body>
        <h1></h1>
          <%
     try{
         String cname = request.getParameter("cname");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agrosales", "root", "koksheng0406");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select pname,pdes,p_location from price where pcategoty = '"+cname+"'");
         
         while(rs.next())
         {
             String price = rs.getString("pname");
             String price_des = rs.getString("pdes");
             String price_loc = rs.getString("p_location");
             %>
             <h1 style="width: 800px"> <%out.print(price);
              out.print( " "+price_des);
              out.print( " "+price_loc);
             %>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
        
        <%@ include file="footer.jsp"%>
    </body>
</html>