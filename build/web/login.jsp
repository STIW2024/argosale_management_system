<%-- 
    Document   : login
    Created on : Dec 8, 2017, 9:30:44 PM
    Author     : KokshengGue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="header.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div>
            <div class="reg_back">
                <h1 style="margin-left: 70px;">Login Form</h1>
                
          <form action="verifyLogin.jsp" method="post">
            <pre>
         <input name="email" placeholder="email"    type="text"> 

         <input name="pass"  placeholder="password" type="password"> 
            

        <input value="Login"   type="submit" class="btn" style="padding-bottom: 30px;"> 
        


            </pre>
            </form> 
            </div>
        </div>
        
  
        <%@include file="footer.jsp" %>
    </body>
</html>
