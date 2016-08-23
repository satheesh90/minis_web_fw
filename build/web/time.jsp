<%-- 
    Document   : time
    Created on : Jun 11, 2016, 11:02:05 PM
    Author     : satheesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TIME</title>
        <%@ page import="java.util.*" %>
        <% response.addHeader("Refresh","1"); %> 
    </head>
    <body>
    <p>The Current date and time = <%=new java.util.Date()%></p>
    </body>
</html>
