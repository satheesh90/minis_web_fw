<%-- 
    Document   : initialise
    Created on : Aug 19, 2016, 10:51:15 PM
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
        <title>Modules List</title>
        <style>
table {
    border-collapse: collapse;
    width: 40%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
    </head>
    <body>
        <jsp:include page='banner2.jsp'></jsp:include>
        <center>
        <p>The List of Modules that appear on the Local network</p>
        <table>
         <thead>
        <tr>
        <th>IntraLogistik Module</th>
        <th>IP Address</th>
        <th>Status</th>
        </tr>
         </thead>
    <tbody>
    <!--Test individual modules and display its functions-->
    <%
        Mongo mongo = new Mongo("127.0.0.1",27017);
        
        DB db = mongo.getDB("test");
        DBCollection mods = db.getCollection("ilmodule");
        
        int count = (int)mods.count();
        int i=0;
        DBCursor cursor = mods.find();
        
        String[] modules = new String[count];
        String[] ip = new String[count];
        String[] status = new String[count];
        
        while(cursor.hasNext()) {
        DBObject dbObj = cursor.next();
                               
        modules[i] = (String) dbObj.get("modules");
        ip[i] = (String) dbObj.get("ip");
        status[i] = (String) dbObj.get("status");
    if(status[i].equals("Not Ready")){
    out.println("<tr>");
    out.println("<td bgcolor=red>");
    out.println(modules[i]);
    out.println("</td >");
    out.println("<td bgcolor=red>");
    out.println(ip[i]);
    out.println("</td>");
    out.println("<td bgcolor=red>");
    out.println(status[i]);
    out.println("</td>");
    out.println("</tr>");
    }
    
    else{    out.println("<tr>");
    out.println("<td bgcolor=green>");
    out.println(modules[i]);
    out.println("</td >");
    out.println("<td bgcolor=green>");
    out.println(ip[i]);
    out.println("</td>");
    out.println("<td bgcolor=green>");
    out.println(status[i]);
    out.println("</td>");
    out.println("</tr>");
    }
    
        i=i+1;
        }
     
    %>  
    </tbody>
        </table>
    <br><br>
        <table> 
         <thead>
        <tr>
        <th>Other MINIS Module</th>
        <th>IP Address</th>
        <th>Status</th>
        </tr>
         </thead>
    <tbody>
    <!--Test individual modules and display its functions-->
    <%
                
        
        DBCollection modsnon = db.getCollection("nonilmodule");
        
        int count2 = (int)modsnon.count();
        int i2 =0;
        DBCursor cursor2 = modsnon.find();
        
        String[] modules2 = new String[count2];
        String[] ip2 = new String[count2];
        String[] status2 = new String[count2];
        
        while(cursor2.hasNext()) {
        DBObject dbObj2 = cursor2.next();
                               
        modules2[i2] = (String) dbObj2.get("modules");
        ip2[i2] = (String) dbObj2.get("ip");
        status2[i2] = (String) dbObj2.get("status");
    
    out.println("<tr>");
    out.println("<td>");
    out.println(modules2[i2]);
    out.println("</td>");
    out.println("<td>");
    out.println(ip2[i2]);
    out.println("</td>");
    out.println("<td bgcolor=red>");
    out.println(status2[i2]);
    out.println("</td>");
    out.println("</tr>");
        
        i2=i2+1;
        }
     
    %>  
    </tbody>
        </table>


        </center>
    </body>
</html>
