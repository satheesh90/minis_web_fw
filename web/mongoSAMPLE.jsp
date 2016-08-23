<%--
    Document   : mongodb
    Created on : May 30, 2016, 4:07:47 PM
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
        <h1>MongoDB</h1>
    <%
                try {
               
       // Mongo mongo = new Mongo("129.217.193.182",38128);
                Mongo mongo = new Mongo("localhost");


        DB db;
        db = mongo.getDB("testdb");
        if(db!=null)
        {out.println("Success");}
            
       DBCollection coll = db.getCollection("mycol");
         if(coll!=null)
         {out.println("Collection mycol selected successfully");}
			
         BasicDBObject doc = new BasicDBObject("title", "MongoDB").
            append("description", "database").
            append("likes", 100).
            append("url", "http://www.tutorialspoint.com/mongodb/").
            append("by", "tutorials point");
				
         coll.insert(doc);
         if(doc!=null)
             out.println("Document inserted successfully");
         else
             out.println("Failed insert");
        
        
        
//        DBCollection table = db.getCollection("user");
//        if(table!=null)
//        out.println("Table Success");
        
        
        
//        BasicDBObject document = new BasicDBObject();
//        document.put("name", "mkyong");
//        document.put("age", 30);
//        document.put("createdDate", new Date());
//        table.insert(document);

//       
//        BasicDBObject searchQuery = new BasicDBObject();
//        searchQuery.put("name", "mkyong");
//
//        DBCursor cursor = table.find(searchQuery);
//
//        while (cursor.hasNext()) {
//                out.println(cursor.next());
//        }
//
//        /**** Update ****/
//        // search document where name="mkyong" and update it with new values
//        BasicDBObject query = new BasicDBObject();
//        query.put("name", "mkyong");
//
//        BasicDBObject newDocument = new BasicDBObject();
//        newDocument.put("name", "mkyong-updated");
//
//        BasicDBObject updateObj = new BasicDBObject();
//        updateObj.put("$set", newDocument);
//
//        table.update(query, updateObj);
//
//        /**** Find and display ****/
//        BasicDBObject searchQuery2
//            = new BasicDBObject().append("name", "mkyong-updated");
//
//        DBCursor cursor2 = table.find(searchQuery2);
//
//        while (cursor2.hasNext()) {
//                out.println(cursor2.next());
//        }

        /**** Done ****/
//        out.println("Done");

    } catch (MongoException e) {
        e.printStackTrace();
    }
              %>
    </body>
</html>