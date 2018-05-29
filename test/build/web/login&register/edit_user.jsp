<%-- 
    Document   : edit_user
    Created on : 2018-4-13, 0:44:58
    Author     : lam
--%>

<%@page import="uts.wsd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <div> <h1>My Account</h1></div>
       <%
            User user = (User)session.getAttribute("user");
        %>
        <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>
            
            <tr bgcolor="lightgray"><td align="right">You are logged in as  <%=log%> | </b><b><a href="../index.jsp">Main Page</a></b> | </b><b><a href="logout.jsp">Logout</a></b></td></tr>
        <form action="welcome.jsp" target="_blank" method="POST">
            <table width="50%">
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="<%=user.getEmail()%>"></td>
                </tr>
                
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%=user.getName()%>"></td>
                </tr> 
                
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="<%=user.getPassword()%>"></td> 
                </tr>
                              
                <tr>
                <td>Agree to TOS</td>
                <td><input type="checkbox" name="tos" ><br>     
                </td>
                </tr>
                
                <tr><td colspan="2" align="center"><input type="submit" value="save"></td></tr>
                               
            </table>
            
            
        </form>
                
    </body>
</html>