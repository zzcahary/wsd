<%-- 
    Document   : bookReserve
    Created on : 2018-5-23, 16:59:45
    Author     : henrylam
--%>

<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<% 
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
        String bookname = request.getParameter("bookname");//用request得到 
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <%
            User user = (User) session.getAttribute("user");
        %>

    <body>
        
        <h1>Reservation</h1>

        <table border = "1">
        <tr>
        <td>Book Title</td>
        <td>Name</td>                   
        <td>Email</td>
        </tr>
        
        <tr>
        <td><%=bookname%></td>
        <td><input type="text" name="name" id="name"></td>
        <td><input type="text" name="email" id="email"></td>
        </tr>
        </table>
      
    
        <input type="button" name="jump" value= "SAVE" onclick="check()"/>
        <script></script>
        <script type="text/javascript">

function check(){
var username=document.getElementById("name");
if(username.value.length==0){
    alert("用户名不能为空");
    return;
}

var email=document.getElementById("email");
if(email.value.length==0){
    alert("邮箱不能为空");
        return;
}
location.href="<%=basePath%>bookReserve/bookSaveSuccess.jsp?title=<%=bookname%>&username="+username.value+"&email="+email.value;
   
//java代码块
}
</script>
        
    </body>
</html>
