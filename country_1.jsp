<%@page import="java.util.Random"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        
    </head>
    <body>
        <%!
    public int generateRandomNumber(int start,int end)
    {
        Random random=new Random();
        long fraction=(long)((end-start+1)*random.nextDouble());
        return((int)(fraction+start));
    }    
    %>
    <% int id=generateRandomNumber(1000,8888);
    %>
    <form action="country.jsp"></form>
    <table>
            <tr><td><b>country</b>:</td><td><Input type="text" name="country" value="<%=id%>" readonly></td></tr>
<!--<tr><td><b>country</b>:</td><td><Input type="text" name="country"></td></tr>-->
                          
            <tr><td><b></b></td><td><Input Type="submit" value="Submit"><br></td></tr>
        </table>
    
        </form>
    </body>
</html>


