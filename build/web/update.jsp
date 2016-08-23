<%-- 
    Document   : update
    Created on : Jun 13, 2016, 11:05:12 PM
    Author     : satheesh
--%>
<%@page import="com.mongodb.util.JSON"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        Mongo mongo = new Mongo("127.0.0.1",27017);
        
        DB db = mongo.getDB("minis");
        DBCollection auth = db.getCollection("cred");
        
        String uname=request.getParameter("username");
        String pwd=request.getParameter("password");
        String email=request.getParameter("email");
        
        DBObject query = new BasicDBObject("name","auth");
        DBObject update = new BasicDBObject();
        update.put("$set", new BasicDBObject("uname",uname).append("pwd", pwd).append("email", email));
        
         WriteResult result = auth.update(query, update);
        
        response.sendRedirect("config.jsp");
        %>
    </body>
</html>
