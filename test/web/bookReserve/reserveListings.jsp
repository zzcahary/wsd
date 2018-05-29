<%-- 
    Document   : reserveListings
    Created on : 2018-5-23, 19:54:23
    Author     : henrylam
--%>


<%@page import="java.util.Iterator"%>
<%@page import="org.jdom.Document"%>
<%@page import="java.util.List"%>
<%@page import="org.jdom.Element"%>
<%@page import="org.jdom.input.SAXBuilder"%>
<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>The listings of Reservation</h1>
        <%
            User user = (User) session.getAttribute("user");
            %>
            <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>
            
            <tr bgcolor="lightgray"><td align="right">You are logged in as  <%=log%> |  </b><b><a href="../index.jsp">Main Page</a></b> | </b><b><a href="../login&register/logout.jsp">Logout</a></b></td></tr>
        </table>
        <p></p>
         <table border = "1" width="100%">
        <tr>
        <td>Book Title</td>
        <td>Name</td>                   
        <td>Email</td>
        </tr>
        
          <% 
            // 得到数据  
            SAXBuilder builder=new SAXBuilder(); // 创建对象  
            // 建立Document对象  
             Document readDocument=builder.build(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "reservations.xml");   
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
                // 输出用户ID号  
//                 <title>Love</title>
//        <username>heng</username>        
//        <email>heng@gmail.com</email>
                out.println("<td>"+current.getChildText("title")+"</td>");  
                // 输出用户名  
                out.println("<td>"+current.getChildText("username")+"</td>");  
                // 输出用户密码  
                out.println("<td>"+current.getChildText("email")+"</td>");  
 
                out.println("</tr>");  
            }   
%>
        </table>
        
    </body>
</html>
