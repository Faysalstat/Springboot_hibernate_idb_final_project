<%-- 
    Document   : redirecthome
    Created on : Aug 6, 2020, 8:11:47 AM
    Author     : Faysal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
                response.sendRedirect("/dashboard/index");
        %>
    </body>
</html>
