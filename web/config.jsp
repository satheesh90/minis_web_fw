<%-- 
    Document   : config
    Created on : May 20, 2016, 8:39:04 PM
    Author     : satheesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MINIS</title>
    </head>
    <style type="text/css">
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 10px;
  width: 120px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

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

#bottom-right
{
right: 0;
bottom: 0;
position: absolute;
}

        body {
              font-family: monofur;
              }
    </style>
    <script type="text/javascript">
        var myVar=setInterval(function () {myTimer()}, 1000);
        var counter = 0;
            function myTimer() {
                var date = new Date();
                document.getElementById("time").innerHTML = date.toLocaleString();
                    }
         
    </script>

    <body>
    <jsp:include page='banner2.jsp'></jsp:include>
<!--    <div align="right"><span id="time"></span></div>-->
    <center>
    <form action="initialise.jsp" method="post">
        <br><br>
        <p>To start Initialising the MINIS
    <button class="button2" style="vertical-align:middle"><span>INITIALISE</span></button>
    </p> 
    </form>
    <form action="properties.jsp" method="post">
        <br><br>
        <p>To view the properties of MINIS Modules</p>
        <button class="button" style="vertical-align:middle"><span>Properties</span></button>
    </form>
    <form action="updateUser.jsp" method="post">
        <br><br>
        <p>To Update Username and Password</p>
    <input type="submit" value="Update">
    </form>
    </center>
    </body>
</html>
