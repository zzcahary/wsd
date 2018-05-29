<%-- 
    Document   : addBook
    Created on : 2018-5-24, 2:22:36
    Author     : henrylam
--%>
<% 
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
     
%> 
<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1> Book Addition</h1>
        <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>
            
            <tr bgcolor="lightgray"><td align="right">You are logged in as  <%=log%> | </b><b><a href="listings.jsp">Listings Page</a></b> |  </b><b><a href="../index.jsp">Main Page</a></b> | </b><b><a href="../login&register/logout.jsp">Logout</a></b></td></tr>
        </table>
    
        <form name =" form"
              method = "post"
              action ="<%=basePath%>bookDetail/saveSuccess.jsp"
              enctype ="application/x-www-form-urlencoded "
              style = "width:30%"
              >
    
        <table>
            
            <tr>
                <td>Book Title</td>
                <td><input type="text" name="bookTitle" id="bookTitle"></td>
            </tr>
            
            <tr>
                <td>Author</td>
                <td><input type="text" name="author" id="author"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="category" id="category"></td>
            </tr>
            <tr>
                <td>Abstract</td>
                <td><input type="text" name="abstract" id="abstract"></td>
            </tr>
           <tr>
                <td>ISBN</td>
                <td><input type="text" name="ISBN" id="ISBN"></td>
            </tr>
            <tr>
                <td>Edition</td>
                <td><input type="text" name="eddition" id="eddition"></td>
            </tr>
            
           <tr>
                <td>Year Of Publication</td>
                <td><input type="text" name="year" id="year"></td>
            </tr>
            
            <tr>
                <td>Publisher</td>
                <td><input type="text" name="publisher" id="publisher"></td>
            </tr>
            <tr>
                <td>Condition</td>
                <td><input type="text" name="condition" id="condition"></td>
            </tr>
            <tr>
                <td>Availability</td>
                <td><input type="text" name="availability" id="availability"></td>
            </tr>
            </table>
                
        <input type="submit" name="save" value= "Add"/>
            </form>
    
        <script>
            function check(){
var bookTitle=document.getElementsByName("bookTitle");
if(bookTitle.value.length==0){
    alert("书名不能为空");
    return;
}

var id=document.getElementsByName("id");
if(id.value.length==0){
    alert("id不能为空");
        return;
}
//var author=document.getElementsByName("author");
//var bookTitle=document.getElementsByName("category");
//var category=document.getElementsByName("userName");
//var ISBN=document.getElementsByName("ISBN");
//
//var bookTitle=document.getElementsByName("eddition");
//var bookTitle=document.getElementsByName("yearOfPublication");
//var bookTitle=document.getElementsByName("publisher");
//var bookTitle=document.getElementsByName("condition");
//var bookTitle=document.getElementsByName("availability");



location.href="<%=basePath%>bookDetail/saveSuccess.jsp?title="+bookTitle.value&id="+id.value+"&email="+email.value;
   
//java代码块
}

        </script>
    </body>
</html>
