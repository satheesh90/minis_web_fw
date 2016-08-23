<%-- 
    Document   : runminis
    Created on : Jun 13, 2016, 1:26:14 AM
    Author     : satheesh
--%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINIS Run</title>
    </head>
    <script type="text/javascript">
        var myVar=setInterval(function () {myTimer()}, 1000);
        var counter = 0;
            function myTimer() {
                var date = new Date();
                document.getElementById("time").innerHTML = date.toLocaleString();
                    }
         
    </script>
    <body>
       <!--STart stop button. Session started at hh:mm:ss. Session running for time.-->
       <jsp:include page="minisModules.jsp"></jsp:include>
    <center>
        <p>The Session Started at : <% Date date = new Date(); out.println(date.toLocaleString()); %></p>
        <p>The Current Time is    : <div><span id="time"></span></div></p>
       <jsp:include page="clickStop.jsp"></jsp:include>
    </center>
    </body>
</html>
