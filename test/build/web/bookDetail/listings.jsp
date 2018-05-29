<%-- 
    Document   : listings
    Created on : 2018-5-23, 19:52:48
    Author     : henrylam
--%>
<%@page import="uts.wsd.*" import="org.jdom.Document"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.jdom.Element"%>
<%@page import="org.jdom.input.SAXBuilder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
     
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
        <h1>Listings</h1>
 <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>
            
            <tr bgcolor="lightgray"><td align="right">You are logged in as  <%=log%> | </b><b><a href="../index.jsp">Main Page</a></b> | </b><b><a href="../login&register/logout.jsp">Logout</a></b></td></tr>
        </table>       

       <p></p>        
            <input type="button" name="add" value= "Add book" onclick="location.href='addBook.jsp'"/>
               <p></p>
        <table border="1" width="100%">
        <tr>
        <td>Book Title</td>
        <td>Author</td>
        <td>Category</td>
        <td>Abstract</td>
        <td>ID</td>
        <td>Username</td>
        <td>ISBN</td>
        <td>Edition</td>
        <td>Year of Publication</td>
        <td>Publisher</td>
        <td>Condition</td>
        <td>Availability</td>
        <td>Delete</td>
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
                out.println("<tr>");  
               
                out.println("<td>"+current.getChildText("title")+"</td>");  
               
                out.println("<td>"+current.getChildText("author")+"</td>");  
                
                out.println("<td>"+current.getChildText("category")+"</td>");
                
                out.println("<td>"+current.getChildText("abstract")+"</td>");
            
                out.println("<td>"+current.getChildText("id")+"</td>");  
 
            out.println("<td>"+current.getChildText("username")+"</td>");  
                out.println("<td>"+current.getChildText("isbn")+"</td>");  
                    out.println("<td>"+current.getChildText("edition")+"</td>");  
                        out.println("<td>"+current.getChildText("year")+"</td>");  
                            out.println("<td>"+current.getChildText("publishername")+"</td>");  
                             out.println("<td>"+current.getChildText("condition")+"</td>"); 
                              out.println("<td>"+current.getChildText("publishername")+"</td>");
             out.println("<td><a href="+"deleteSuccess.jsp?id="+current.getChildText("id")+">DELETE</a>"+"</td>");
                out.println("</tr>");  
            }   
%>

        </table>
          
    </body>
</html>