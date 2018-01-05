<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css"/>
        <%@ include file="header0.jsp"%>
        <title>Contact Us</title>
    </head>
    <body>
       
        <div class="contact-us" style="background-color: #3498db; padding-bottom: 100px; padding-top: 10px; margin-top: 20px;">
        <h1 style="color:  #ffffff; margin-left: 50px;">Contact US</h1>
        <form action="contact.jsp" method="post">
         <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px; ">Name: <input name="name" type="text" placeholder="enter name" style="margin-left: 167px; width: 350px;"/></label>
         <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Phone number: <input name="phone" type="text" placeholder="enter Phone number:"style="margin-left: 96px; width: 350px;"/></label>
         <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Email: <input name="email" type="text" placeholder="enter mail id"style="margin-left: 165px; width: 350px;"/></label>
         <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Comments and questions:<textarea name="query" style="width:350px; border:1px solid #999999; margin-top: 0px;margin-left: 15px; "></textarea></label>
         <br><br>  <input type="submit" name="btn" class ="cbtn" />
            
        </form>
   
    </div>
        
        <div class="contact-us-right"style="background-color: #3498db;padding-bottom: 100px;">
            
            <p style="color: #ffffff;margin-top: -50px;margin-left: 22px;">Customer Service<br>
                <b style="font-size: 20px;">MON to FRI, 8AM to 8PM / SAT to SUN, 9AM to 6PM</b><br>
                <b style="font-size: 20px;">Add..</b> Buyer Support <br>
            <b style="font-size: 20px;">Phone</b> : 017-3918920
            016-5472142
           <br>
            <b style="font-size: 20px;">E-Mail</b> : agrosale1996@gmail.com 
            
            </p>
            
        </div> 
        <div style="margin-top: 30px;">
        <%@ include file="footer.jsp"%>
        </div>
    </body>
</html>
