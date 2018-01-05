<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header0.jsp"%>
        <title>JSP Page</title>
        <style>
.btn {
  border: 2px solid black;
  background-color: white;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}

/* Orange */
.banana {
  border-color: #ff9800;
  color: orange;
}

.banana:hover {
  background: #ff9800;
  color: white;
}

/* Red */
.oilpalm {
  border-color: #f44336;
  color: red
}

.oilpalm:hover {
  background: #f44336;
  color: white;
}

/* Green */
.paddy {
  border-color: #4CAF50;
  color: green;
}

.paddy:hover {
  background-color: #4CAF50;
  color: white;
}

/* Gray */
.rubber {
  border-color: #e7e7e7;
  color: black;
}

.rubber:hover {
  background: #e7e7e7;
}


</style>
    </head>
    <body>
        <centre>
            <div class="cat_right">
            <h2>Select your category</h2>
            </div>
        <div class="button">
            <input type="submit" value="Banana" onclick="window.location='bananaPrice.jsp'" style="height: 140px; width: 200px; margin-left: 70px; margin-right: auto;" class="btn banana">
            <input type="submit" value="Oil Palm" onclick="window.location='oilPalmPrice.jsp'" style="height: 140px; width: 200px; margin-left: 130px; margin-right: auto;" class="btn oilpalm">
            <input type="submit" value="Paddy" onclick="window.location='paddyPrice.jsp'" style="height: 140px; width: 200px; margin-left: 140px; margin-right: auto;" class="btn paddy">
            <input type="submit" value="Rubber" onclick="window.location='rubberPrice.jsp'" style="height: 140px; width: 200px; margin-left: 140px; margin-right: auto;" class="btn rubber">
            
        </div> 
    </centre>                                                                           
        <%@ include file="footer.jsp"%>
    </body>
</html>
