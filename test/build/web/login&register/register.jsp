<%-- 
    Document   : register
    Created on : 2018-4-13, 0:45:48
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
        <h1>Register</h1>
        <form name =" form"
              action = "welcome.jsp" 
              method = "post"
              enctype ="application/x-www-form-urlencoded "
              style = "width:30%"
              >
    
        <table>
            
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            
            <tr>
                <td>Email</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>Agree to TOS</td>
                <td><input type="checkbox" name="tos" ><br>
                     <input type="submit" value = "Register">
                </td>
            </tr>
                    
        </table>
        <p>Click <a href="../index.jsp">here</a> to home page.</p>
        </form>
       
            
    </body>
</html>
