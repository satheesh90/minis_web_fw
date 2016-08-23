<%-- 
    Document   : loginr
    Created on : May 29, 2016, 7:10:05 PM
    Author     : satheesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <style type="text/css">
               body {
              font-family: Helvetica Neue;
              }
              body {
    background-image: url("IMG-INF/background222.png");
    background-repeat: no-repeat;
    background-position: 360px 250px;
    background-attachment: fixed;
    </style>
    <body>
         <jsp:include page='banner.jsp'></jsp:include>
        <div align="center">
            <!--<h2>Enter the Login details</h2>-->
            <form action="loginc.jsp" method="post">
            <br/>Username  <input type="text" name="username">
            <br/>
            <br/>Password  <input type="password" name="password">
            <br/>
            <br/><input type="submit" value="Login!">
            </br>
            <p><font color = "red"><b>Incorrect Username or Password</b></font></p>
            </form>
        </div>
    </body>
</html>
