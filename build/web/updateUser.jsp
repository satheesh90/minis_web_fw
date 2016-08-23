<%-- 
    Document   : dummy
    Created on : Jun 15, 2016, 10:46:22 AM
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
        <title>Update</title>
        <style>
            *,
*:before,
*:after {
   box-sizing: border-box;
}
form {
  border: 1px solid #c6c7cc;
  border-radius: 5px;
  font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
  overflow: hidden;
  width: 240px;
}
fieldset {
  border: 0;
  margin: 0;
  padding: 0;
}
input {
  border-radius: 5px;
  font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin: 0;
}
.account-info {
  padding: 20px 20px 0 20px;
}
.account-info label {
  color: #395870;
  display: block;
  font-weight: bold;
  margin-bottom: 20px;
}
.account-info input {
  background: #fff;
  border: 1px solid #c6c7cc;
   box-shadow: inset 0 1px 1px rgba(0, 0, 0, .1);
  color: #636466;
  padding: 6px;
  margin-top: 6px;
  width: 100%;
}
.account-action {
  background: #f0f0f2;
  border-top: 1px solid #c6c7cc;
  padding: 20px;
}
.account-action .btn {
  background: linear-gradient(#49708f, #293f50);
  border: 0;
  color: #fff;
  cursor: pointer;
  font-weight: bold;
  float: right;
  padding: 8px 16px;
}
.account-action label {
  color: #7c7c80;
  font-size: 12px;
  float: left;
  margin: 10px 0 0 20px;
}
        </style>
    </head>
    <body>
        <jsp:include page='banner2.jsp'></jsp:include>
    <center>
    <%
        Mongo mongo = new Mongo("127.0.0.1",27017);
        
        DB db = mongo.getDB("minis");
        DBCollection auth = db.getCollection("cred");
        
        DBObject dbo = auth.findOne();
        String uname = (String)dbo.get("uname");
        String pwd  = (String)dbo.get("pwd");
        String email  = (String)dbo.get("email");
        
     %>   
    <form action="update.jsp" method="post">
    <fieldset class="account-info">
    <label>
      Username
      <input type="text" name="username" value=<%=uname%>>
    </label>
    <label>
      Password
      <input type="password" name="password"  value=<%=pwd%>>
    </label>
    <label>Alert Email
      <input type="email" name="email" value=<%=email%>>
    </label>
  </fieldset>
  <fieldset class="account-action">
      <input class="btn" type="submit" name="submit" value="Update">
  </fieldset>
</form>
    </body>
</html>
