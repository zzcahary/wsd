<%-- 
    Document   : LoginPage
    Created on : 2018-5-21, 13:33:06
    Author     : henrylam
--%>

<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login Page</title>
</head>
<body>
    <left>
        <h1 style="color:Black">Login</h1>
        
            <form id="indexform" name="indexForm" action="logincheck.jsp" method="post">
                <table border="0">
                    <tr>
                        <td>Username：</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>Password：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
                </table>
                <input type="submit" value="Login" style="color:blue">
            </form>
        
            <form action="registerPage.jsp">
                <input type="submit" value="Register" style="color:blue">
            </form>
            <form action="mainPage.jsp">
                <input type="submit" value="Back" style="color:blue">
            </form>
    </left>
</body>
</html>
