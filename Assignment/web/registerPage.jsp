<%-- 
    Document   : registerPage
    Created on : 2018-5-21, 13:54:38
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
        
        <h1>Register</h1>
        
                <td>Username：</td>
                <td><input type="text" name="username"></td>
                <td>Password：</td>
                <td><input type="password" name="password"></td>
                <td>Confirm Password：</td>
                <td><input type="password" name="cPassword"></td>
                
            <form action="registerSuccess.jsp">
                <input type="submit" value="Register" style="color:blue">        
           </form>
           <form action="loginPage.jsp">
                <input type="submit" value="Back" style="color:blue">        
           </form>
          
        
    </body>
</html>
