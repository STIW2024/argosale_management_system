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
           ResultSet rs = stmt.executeQuery("select wname,wdes,w_location from wayplant where wcategoty = '"+cname+"'");
         
         while(rs.next())
         {
             String wayplant = rs.getString("wname");
             String wayplant_des = rs.getString("wdes");
             String wayplant_loc = rs.getString("w_location");
             %>
             <h1 style="width: 800px"> <%out.print(wayplant);
              out.print( " "+wayplant_des);
             %>
              <a href="http://localhost:8080/agrosale/<%out.println(wayplant_loc);%>">Download</a></h1>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
        
        <%@ include file="footer.jsp"%>
    </body>
</html>

