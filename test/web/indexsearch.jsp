<%-- 
    Document   : index
    Created on : 2018-4-13, 0:45:07
    Author     : lam
--%>


<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ page import="java.io.*,org.jdom.*,org.jdom.input.*,org.jdom.output.*,java.util.List,java.util.Iterator" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
    </head>
    <body>
        <h1 align="center">Second Hand Text Book Website</h1>
        <%
            User user = (User) session.getAttribute("user");
     String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 


      %>
        
        
        <% if(user != null){ %>
        <table width="100%">
            <% String log = user.getName() + " &lt" +user.getEmail()+ "&gt"; %>
            
            <tr bgcolor="lightgray"><td align="right">You are logged in as  <%=log%></td></tr>
            
           <form action="<%=basePath%>indexsearch.jsp" method="post">
                
           <tr><td><select id="book" name="book">
            <option value ="bookTitle">Book Title</option>
            <option value ="userName">Username</option>
            </select>
            <input type="text" name="search" id="search">
            <input type="submit" name="search" value= "Search"/>
            </td></tr>
                
            </form>
            
            <tr><td align="right"><b><a href="login&register/edit_user.jsp">My Account</a></b><b> | </b><b><a href="login&register/logout.jsp">Logout</a></b></td></tr>
          <tr><td align="right"><b><a href="bookDetail/listings.jsp">Listings</a></b><b> | </b><b><a href="bookReserve\reserveListings.jsp">Reservation</a></b></td></tr>

        </table>
       
        <% } else { %>
        <table width="100%">
           <tr bgcolor="lightgray"><td align="right">You are not logged in.</td></tr>
           <tr><td><select>
            <option value ="bookTitle">Book Title</option>
            <option value ="userName">Username</option>
            </select>
            <input type="text" name="search">
            <input type="button" name="search" value= "Search"/>
            </td></tr>
           <tr><td align="right"><b><a href="login&register/login.jsp">Login</a></b><b> | </b><b><a href="login&register/register.jsp">Register</a></b></td></tr>
        </table>
        <% } %>
        
        <table border="1" width="100%">
        <tr>
        <td>Book Title</td>
        <td>Author</td>
        <td>Category</td>
        <td>Number of book</td>
        </tr>
        
       

        <% 
            
              request.setCharacterEncoding("utf-8");
     String book = request.getParameter("book");//用request得到 
        String search = request.getParameter("search");//用request得到 
       System.out.println("book:"+book);
               System.out.println("search"+search);     
        
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
            int a=0;
        
            for(Iterator i=list.iterator();i.hasNext();)  
            {     Element current=(Element)i.next();
                if(book.equals("bookTitle")){

                  
                                         if(current.getChildText("title").contains(search)){
                                              out.println("<tr>");  
                // 输出用户ID号  
                out.println("<td><a href="+"bookDetail/bookDetail.jsp?id="+current.getChildText("id")+""+">"+current.getChildText("title")+"</a></td>");  
                // 输出用户名  
                out.println("<td>"+current.getChildText("author")+"</td>");  
                // 输出用户密码  
                out.println("<td>"+current.getChildText("category")+"</td>");  
                // 输出真实姓名  
                out.println("<td>"+current.getChildText("num")+"</td>");  
 
                out.println("</tr>");  
                a++;
                                         }
               
                }else
                {
                     if(current.getChildText("username").contains(search)){
                                              out.println("<tr>");  
                // 输出用户ID号  
                out.println("<td><a href="+"bookDetail/bookDetail.jsp?id="+current.getChildText("id")+""+">"+current.getChildText("title")+"</a></td>");  
                // 输出用户名  
                out.println("<td>"+current.getChildText("author")+"</td>");  
                // 输出用户密码  
                out.println("<td>"+current.getChildText("category")+"</td>");  
                // 输出真实姓名  
                out.println("<td>"+current.getChildText("num")+"</td>");  
 
                out.println("</tr>");  
                 a++;
                                         }
                }
               
            } 

            if(a==0){
               out.println("<tr>");
                  out.println("<td colspan='4' align='center'>Error! Can not find the book.</td>");  
     
                out.println("</tr>");  
            }

%>
        </table>
        
    </body>
</html>           
                
                
            
    
    
    

