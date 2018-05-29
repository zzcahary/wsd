<%-- 
    Document   : welcome
    Created on : 2018-4-13, 0:46:06
    Author     : lam
--%>

<%@page import="uts.wsd.*" import="java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        
    </head>
    
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String tos = request.getParameter("tos");
    %>
    
    <% String filePath = application.getRealPath("WEB-INF/users.xml");%>

    <jsp:useBean id="webApp" class="uts.wsd.webApplication" scope="application">
        <jsp:setProperty name="webApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <%Users users = webApp.getUsers();%>

       <%    if (tos != null) {    %> 

      <body>
          <p>Welcome, Your name is <%out.println(name);%>.</p>
        <p>Your Email is <%out.println(email);%>.</p>
        <p>Your password is <%out.println(password);%>.</p>
        
        <%
            User user = new User(email,name,password);
            session.setAttribute("user", user); 
            users.addUser(user);
            webApp.updateXML(users, filePath);
            webApp.saveUsers();
            
        %>
        <hr>
        
        <p>Click <a href="../index.jsp">here</a> to proceed to the main page.</p>
      </body>
    
       <%  }  else { %> 
           <p>Sorry, you must agree to the Terms of Service.</p>
           <p>Click <a href="../index.jsp">here</a> to go back</p>
      <% } %>

</html>