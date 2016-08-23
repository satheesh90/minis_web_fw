<%-- 
    Document   : clickRun
    Created on : Jun 16, 2016, 1:15:18 AM
    Author     : satheesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .button2 {
  display: inline-block;
  border-radius: 4px;
  background-color: rgb(0, 148, 0);
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 10px;
  width: 130px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
            .button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
            .button2 span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
}
        </style>
    </head>
    <body>
        <center>
    <form action="runminis.jsp" method="post">
        <br><br>
        <button class="button2" style="vertical-align:middle"><span>RUN MINIS</span></button>
    </form>
        </center>
    </body>
</html>
