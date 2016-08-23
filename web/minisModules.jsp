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
    <body>
        <jsp:include page = "banner2.jsp"></jsp:include>
        
    <center><h3>MINIS MODULES</h3>
    <!--SHow how the modules are connected to each other. And provide PROCEED button to runminis-->
    <table>
         <thead>
        <tr>
        <th>Module ID</th>
        <th>ModuleIN</th>
        <th>ModuleOUT</th>
        <th>SortLeft</th>
        <th>SortRight</th>
        </tr>
         </thead>
    <tbody>
        <tr>
            <td>MinisInit</td>
            <td>-</td>
            <td>BendConveyor90_1</td>
            <td>-</td>
            <td>-</td>
        </tr>
        <tr>
            <td >Sorter_1</td>
            <td>BendConveyor90_1</td>
            <td>-</td>
            <td>-</td>
            <td>Sorter_2</td>
        </tr>
        <tr>
            <td>Sorter_2</td>
            <td>Sorter_1</td>
            <td>-</td>
            <td>RollerChainLong_1</td>
            <td>RollerChainLong_2</td>
        </tr>
        <tr>
            <td>RollerChainLong_1</td>
            <td>Sorter_2</td>
            <td>BendConveyor180_1</td>
            <td>-</td>
            <td>-</td>
        </tr>
        <tr>
            <td>RollerChainLong_2</td>
            <td>Sorter_2</td>
            <td>BendConveyor90_2</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
        </tr>
    </tbody></table>
    <p>Number of MINIS Modules Connected : <font color="red"> 5 </font></p>
    
    
    </center>        
</body>
</html>
