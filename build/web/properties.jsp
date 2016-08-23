<%-- 
    Document   : testModules
    Created on : Jun 9, 2016, 12:41:07 AM
    Author     : satheesh
--%>
<%@page import="java.lang.String"%>
<%@page import="com.mongodb.util.JSON"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.*"%>
<%@page import="org.bson.types.ObjectId"%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Properties of MINIS Modules</title>
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
    </head>

    <jsp:include page="banner2.jsp"></jsp:include>
    <center>
    <table>
         <thead>
        <tr>
        <th>MINIS MODULE</th>
        <th>No. Of NFC Readers</th>
        <th>No. of Position Sensors</th>
        <th>No. of Motors</th>
        </tr>
         </thead>
    <tbody>
    <!--Test individual modules and display its functions-->
    <%
        Mongo mongo = new Mongo("127.0.0.1",27017);
        
        DB db = mongo.getDB("test");
        DBCollection props = db.getCollection("props");
        
        int count = (int)props.count();
        int i; 
        
        String[] name = new String[count];
        String[] nfc = new String[count];
        String[] pos = new String[count];
        String[] motor = new String[count];
        
        for(i=0;i<count;i++)
        {    
        BasicDBObject query = new BasicDBObject();
        query.put("_id", i+1);
        DBObject dbObj= props.findOne(query);
        
        
        name[i] = (String) dbObj.get("name");
        nfc[i] = (String) dbObj.get("nfc");
        pos[i] = (String) dbObj.get("pos");
        motor[i] = (String) dbObj.get("motor");
    
    out.println("<tr>");
    out.println("<td>");
    out.println(name[i]);
    out.println("</td>");
    out.println("<td>");
    out.println(nfc[i]);
    out.println("</td>");
    out.println("<td>");
    out.println(pos[i]);
    out.println("</td>");
    out.println("<td>");
    out.println(motor[i]);
    out.println("</td>");
    out.println("</tr>");
  
    } 
    %>
    </tbody>    
    </table>
</center>      
</html>
