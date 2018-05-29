<%-- 
    Document   : loginAction
    Created on : 2018-4-13, 0:45:26
    Author     : lam
--%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
           <jsp:useBean id="webApp" class="uts.wsd.webApplication" scope="application">
           <jsp:setProperty name="webApp" property="filePath" value="<%=filePath%>"/>
           </jsp:useBean>
         <%   Users users = webApp.getUsers();
             String email = request.getParameter("email");
             String password = request.getParameter("password");
             User user = users.login(email, password);
              if (user != null) {
           session.setAttribute("user", user);
         %>
       
  <p>Login successful. Click <a href="../index.jsp">here</a> to return the main page.</p>
     <% } else { %>
     
    <p>Email/Password incorrect. Click <a href="login.jsp">here</a> to try again.</p>
     <% } %>
    </body>
</html>
