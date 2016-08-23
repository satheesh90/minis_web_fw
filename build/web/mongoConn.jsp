<%-- 
    Document   : mongoConn
    Created on : Jun 9, 2016, 5:42:23 PM
    Author     : satheesh
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<%@page import = "java.net.UnknownHostException" %>
<%@page import = "java.util.Date" %>
<%@page import = "com.mongodb.BasicDBObject" %>
<%@page import = "com.mongodb.DB" %>
<%@page import = "com.mongodb.DBCollection" %>
<%@page import = "com.mongodb.DBCursor" %>
<%@page import = "com.mongodb.Mongo" %>
<%@page import = "com.mongodb.MongoException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MongoDB connection</title>
    </head>
    <body>
        <%
        try {
       // Mongo mongo = new Mongo("129.217.193.182",38128);
        Mongo mongo = new Mongo("localhost",38128);
        out.println("Success");
            } catch (MongoException e) {
              e.printStackTrace();
                    }
        %>
    </body>
</html>