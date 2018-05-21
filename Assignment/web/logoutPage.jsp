<%-- 
    Document   : logoutPage
    Created on : 2018-5-21, 14:40:44
    Author     : henrylam
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
        <p>You have been logged out.Click <a href="mainPage.jsp">here</a> to return to the main page.</p>
    </body>
</html>