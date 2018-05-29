<%-- 
    Document   : logout
    Created on : 2018-4-13, 0:45:35
    Author     : lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();%>
        <p>You have been logged out. Click <a href="../index.jsp">here</a> to return to the main page.</p>
    </body>
</html>
