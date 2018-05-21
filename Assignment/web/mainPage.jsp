<%-- 
    Document   : show
    Created on : 2018-5-21, 13:28:09
    Author     : henrylam
--%>


<%@page import="listerInfo.lister"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        

    </head>
    
        <style type="text/css">
            #border{
                 border: solid ;
                 border-width: 1px;
                 height: 20px;
                 background: lightgrey;
                 text-align: right;
                 }
        </style>
        <h1>Diary Keeper</h1>
        <%   
            lister lister = (lister)session.getAttribute("hh");
            
        %> 
         <%if(session.getAttribute("hh")!=null){%>
         <p><div id="border"> Your are logged in as <%= lister.getUsername()%> </div></p>                      
           <p style="text-align:right"><a href = "logoutPage.jsp">Logout</a></text-align></p>
         <%}else{%>
        <p><div id="border">You are not logged in</div></p>
        <p style="text-align:right"><a href="loginPage.jsp">Login</a></text-align></p>
          <%}%>
  
</html>           
