<%-- 
    Document   : initialise
    Created on : Jun 9, 2016, 12:40:02 AM
    Author     : satheesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINIS Status</title>
    </head>
    <style>
table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
<center>
    <body>
    
    <jsp:include page = "minisModules.jsp"></jsp:include>
    <jsp:include page ="clickRun.jsp"></jsp:include>
</center>        
</body>
</html>
