<%-- 
    Document   : category1
    Created on : Jan 1, 2018, 1:20:13 PM
    Author     : KokshengGue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header0.jsp"%>
            <title>Category</title>
        <style>
.btn {
  border: 2px solid black;
  background-color: white;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}
/* Green */
.annual {
  border-color: #4CAF50;
  color: green;
}

.annual:hover {
  background-color: #4CAF50;
  color: white;
}

/* Blue */
.price {
  border-color: #2196F3;
  color: dodgerblue
}

.price:hover {
  background: #2196F3;
  color: white;
}



/* Red */
.plant {
  border-color: #f44336;
  color: red
}

.plant:hover {
  background: #f44336;
  color: white;
}


</style>
    </head>
    <body>
        <centre>
            <div class="cat_right">
            <h2>Select your category</h2>
            </div>
        <div class="button">
            <input type="submit" value="Annual Report" onclick="window.location='category.jsp'" style=" height: 70px; width: 200px; margin-left: 70px; margin-right: auto;" class="btn annual">
            
            <input type="submit" value="Market Price" onclick="window.location='categoryPrice.jsp'" style=" height: 70px; width: 200px; margin-left: 290px; margin-right: auto;" class="btn price">
            <input type="submit" value="Way to Plant" onclick="window.location='categoryWTP.jsp'" style=" height: 70px; width: 200px; margin-left: 290px; margin-right: auto;" class="btn plant">

        </div> 
    </centre>
        <%@ include file="footer.jsp"%>
    </body>
</html>
