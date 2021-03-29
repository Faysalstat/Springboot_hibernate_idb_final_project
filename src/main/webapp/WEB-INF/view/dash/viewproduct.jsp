<%-- 
    Document   : viewproduct
    Created on : Aug 6, 2020, 6:38:07 AM
    Author     : Faysal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Customer admin = (Customer) session.getAttribute("admin");

            if (admin == null || !admin.getUserrole().equals("ADMIN")) {
                response.sendRedirect("login");
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
