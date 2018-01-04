<%-- 
    Document   : reg
    Created on : Dec 8, 2017, 9:33:37 PM
    Author     : KokshengGue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="css/home.css" rel="stylesheet" type="text/css">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp" %>
        <title>Registration</title>
    </head>
    <body>
        
        <div class="b">
            <h1>Registration Form</h1>

            <div class="reg_back">
            <pre>
            <form action="register.jsp" method="post">
            <input name="name"  placeholder="Enter your name" type="text">
            <input name="email"  placeholder="email" type="text"> 
            <input name="password"  placeholder="password" type="password"> 
            <input name="contact"  placeholder="contact" type="text"> 
            <input value="Registration"   type="submit" class="btn" style="padding-bottom: 30px;"> 
            </form>
            </pre>
            </div>
        </div>
         
    </body>
   
</html>
