<%-- 
    Document   : bookDetail
    Created on : 2018-5-23, 16:43:19
    Author     : henrylam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.wsd.*" import="java.io.*,org.jdom.*,org.jdom.input.*,org.jdom.output.*,java.util.List,java.util.Iterator" %>  
<% 
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
        String id = request.getParameter("id");//用request得到 
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>Book Detail</h1>
        <%
            User user = (User) session.getAttribute("user");
        %>
        
         <% if(user != null){ %>
            <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>            
            <tr bgcolor="lightgray">
                <td align="right">You are logged in as  <%=log%> | <b><a href="../index.jsp">Main Page</a></b> | </b><b><a href="../login&register/logout.jsp">Logout</a></b></td></tr>
        </table>
        <% } else { %>
        <table width="100%">          
            <tr bgcolor="lightgray">
                <td align="right">You are not log in! | <b><a href="../login&register/login.jsp">Login</a></b> | <b><a href="../index.jsp">Main Page</a></b></td></tr>
        </table>
        <% } %>
      
<p></p>
    <table border="1"  width="100%">
        <tr>
        <td>Book Title</td>
        <td>Author</td>
        <td>Category</td>
        <td>Number of book</td>
        </tr>
        
   
          <% 
            // 得到数据  
            SAXBuilder builder=new SAXBuilder(); // 创建对象  
            // 建立Document对象  
             Document readDocument=builder.build(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml");   
             // 注意：user.xml文件要和该文件放到一个文件夹下，具体原因现在不太清楚，是实验得到的  
            // 得到根元素  
             Element rootElement=readDocument.getRootElement();  
//   Document doc = domparser.getDocument( request.getSession().getServletContext()
//                .getRealPath("/")+ "WEB-INF/" + "book.xml");
//   domparser.traverseTree(doc);
      // 得到根元素  
//             Element rootElement=readDocument.getRootElement();  
            // 得到根元素的子元素列表,实际上就是user元素列表  
            List list=rootElement.getChildren();  
            // 输出数据  
            for(Iterator i=list.iterator();i.hasNext();)  
            {  
            
                Element current=(Element)i.next(); 
                    if(current.getChildText("id").equals(request.getParameter("id"))){
                           out.println("<tr>");  
                // 输出用户ID号  
                out.println("<td>"+current.getChildText("title")+"</td>");  
                // 输出用户名  
                out.println("<td>"+current.getChildText("author")+"</td>");  
                // 输出用户密码  
                out.println("<td>"+current.getChildText("category")+"</td>");  
                // 输出真实姓名  
                out.println("<td>"+current.getChildText("num")+"</td>");  
 
                out.println("</tr>");  
                    }
             
            }   
%>
        
       
        </table>
        <br>
        <table border="2"  width="100%">
        <tr>
        <td>ID</td>
        <td>Username</td>
        <td>Abstract</td>
        <td>ISBN</td>
        <td>Edition</td>
        <td>Year of Publication</td>
        <td>Publisher</td>
        <td>Condition</td>
        </tr>
        
          <% 
            // 得到数据  
            SAXBuilder builder1=new SAXBuilder(); // 创建对象  
            // 建立Document对象  
             Document readDocument1=builder1.build(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml");   

             Element rootElement1=readDocument1.getRootElement();  
            List list1=rootElement1.getChildren();  
            // 输出数据  
            for(Iterator i=list1.iterator();i.hasNext();)  
            {  
            
                Element current=(Element)i.next(); 
                    if(current.getChildText("id").equals(request.getParameter("id"))){
                           out.println("<tr>");  
                // 输出用户ID号  
                out.println("<td>"+current.getChildText("id")+"</td>");  
              
                out.println("<td>"+current.getChildText("username")+"</td>"); 
                
                out.println("<td>"+current.getChildText("abstract")+"</td>"); 
           
                out.println("<td>"+current.getChildText("isbn")+"</td>");  
                // 输出真实姓名  
                out.println("<td>"+current.getChildText("edition")+"</td>");  
                out.println("<td>"+current.getChildText("year")+"</td>"); 
                out.println("<td>"+current.getChildText("publishername")+"</td>"); 
                out.println("<td>"+current.getChildText("condition")+"</td>");
               //if(user != null){
                 out.println("<td><a href="+basePath+"bookReserve/bookReserve.jsp?bookname="+current.getChildText("title")+">Reserve</a></td>");
                //}
                    }
              out.println("</tr>");
            }   
%>
     
        </table>
    
         
</html>

