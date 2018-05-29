<%-- 
    Document   : deleteSuccess
    Created on : 2018-5-23, 19:52:39
    Author     : henrylam
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="uts.wsd.User"%>
<%@page import="java.util.List"%>
<%@page import="org.jdom.input.SAXBuilder"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jdom.JDOMException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="org.jdom.output.Format"%>
<%@page import="org.jdom.output.XMLOutputter"%>
<%@page import="org.jdom.Element"%>
<%@page import="org.jdom.Document"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    
        User user = (User) session.getAttribute("user");
   if(user==null){
        out.println("<script>");
                    out.println("alert('请登录后再操作！');");
                    out.println("history.back();");
                  out.println("</script>");
   }
        String id = request.getParameter("id");//用request得到    
         if(id==null){
        out.println("<script>");
                    out.println("alert('请选择要删除的书！');");
                    out.println("history.back();");
                  out.println("</script>");
   }
       System.err.print("删除id："+id);
                   
// 1.创建一个SAXBuilder对象
        SAXBuilder saxBuilder = new SAXBuilder();
 
        InputStream in;
        try {
            // 2.创建一个输入流，将xml文件加载到输入流s
            in = new FileInputStream(request.getSession().getServletContext().getRealPath("/")+ "WEB-INF/"+ "book.xml");
            // 3.通过SAXBuilder的build方法将输入流加载到SAXBuilder中
            Document document = saxBuilder.build(in);
            // 4.通过Document对象获取xml文件的根节点
            Element rootElement = document.getRootElement();
            List<Element> list = rootElement.getChildren("book");
           
            // 5.根据根节点获取子节点的List集合
//            List<Element> bookList = rootElement.getChildren();
        Element el1=null;
                for (Element el : list) {
                
                if (id.equals(el.getChildText("id"))) {
                    if(el.getChildText("username").equals(user.getName())){
                        el1=el;
                          
                    }else{
                    out.println("<script>");
                    out.println("alert('只能删除自己创建的！');");
                    out.println("history.back();");
                  out.println("</script>");
                return;
                    
                    }
                  
                }
            }
                    if(el1!=null){
                    rootElement.removeContent(el1);
                    }
            // 7.设置输出流和输出格式
             Format format = Format.getCompactFormat();
            format.setEncoding("utf-8");//设置编码方式为gb2312
            format.setIndent("  ");//设置缩进（此处为一个tab键）
            XMLOutputter outputter = new XMLOutputter(format);
          
          outputter = new XMLOutputter(format);
            outputter.output(document, new FileOutputStream(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml"));
            in.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Book is deleted successfully! Click <a href="listings.jsp">here</a> to return to the listings page.</p>
    </body>
</html>