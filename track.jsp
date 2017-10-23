<%-- 
    Document   : track
    Created on : Jul 19, 2017, 2:40:21 AM
    Author     : Mudit
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tracking detail</title>
    </head>
    <body>
        <form action="trackdb.jsp" method="post">
        <h1> Tracking your order</h1>
        <table>
            <tr><td>Shipment Id</td><td></td><td><input type="text" name="shipid"></td></tr>
                      <tr><td></td><td></td><td><input type="Reset" value="Reset"></td><td></td><td><input type="Submit" value="Submit"></td></tr>

        </table>
    </body>
</html>