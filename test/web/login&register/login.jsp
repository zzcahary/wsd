<%-- 
    Document   : login
    Created on : 2018-4-13, 0:45:16
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
        <h1> Login </h1>
        <table width="100%">
            <tr bgcolor="lightgray"><td align="right"></b><b><a href="register.jsp">Register</a></b> |  </b><b><a href="../index.jsp">Main Page</a></b></td></tr>
        </table>
        <form name =" form"
              action = "loginAction.jsp" 
              method = "post"
              enctype ="application/x-www-form-urlencoded "
              style = "width:30%"
              >
        <table>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value = "Login"></a></td>
            </tr>
        </table>
        </form>
    </body>
</html>
