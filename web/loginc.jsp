<%-- 
    Document   : loginc.jsp
    Created on : May 29, 2016, 6:58:40 PM
    Author     : satheesh
--%>

<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINIS</title>
    </head>
    <style type="text/css">
               body {
              font-family: monofur;
              }
    </style>
    
    <body>
        <%
        Mongo mongo = new Mongo("127.0.0.1",27017);
        
        DB db = mongo.getDB("minis");
        DBCollection auth = db.getCollection("cred");
        
        DBObject dbo = auth.findOne();
        String uname = (String)dbo.get("uname");
        String pwd  = (String)dbo.get("pwd");
           
        String username=request.getParameter("username");
        String password=request.getParameter("password");
       
        if((username.equals(uname) && password.equals(pwd)))
            {
            session.setAttribute("username",username);
            response.sendRedirect("config.jsp");
            }
        else
            {
            response.sendRedirect("loginr.jsp");
            }
        %>
    </body>
</html>
