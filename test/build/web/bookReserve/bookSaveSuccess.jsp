<%-- 
    Document   : bookSaveSuccess
    Created on : 2018-5-23, 17:08:07
    Author     : henrylam
--%>


<%@page import="java.util.Iterator"%>
<%@page import="org.jdom.JDOMException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.List"%>
<%@page import="org.jdom.Element"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.jdom.input.SAXBuilder"%>
<%@page import="org.jdom.output.Format"%>
<%@page import="org.jdom.Document"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="org.jdom.output.XMLOutputter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page   import= "uts.wsd.JDomOutput "%>
<% 
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("title");//用request得到 
        String username = request.getParameter("username");//用request得到 
        String email = request.getParameter("email");//用request得到 
              System.out.print(title);
              System.out.print(username);
              System.out.print(email);
                      // 得到数据  
            SAXBuilder builder=new SAXBuilder(); // 创建对象  
            // 建立Document对象  
             Document readDocument=builder.build(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml");   
             // 注意：user.xml文件要和该文件放到一个文件夹下，具体原因现在不太清楚，是实验得到的  
            // 得到根元素  
             Element rootElement1=readDocument.getRootElement();  
            List list=rootElement1.getChildren();  
            // 输出数据  
            for(Iterator i=list.iterator();i.hasNext();)  
            {  
                
                Element current=(Element)i.next();  
                if(title.equals(current.getChildText("title"))){
                    if(Integer.valueOf(current.getChildText("num"))>0){
                        System.err.print(Integer.valueOf(current.getChildText("num")));
                       Element num= current.getChild("num");
                      int nums= Integer.valueOf(current.getChildText("num"))-1;
                       num.setText(nums+"");
                    }else{
                         
                             out.println("<script>");
                    out.println("alert('数量不足！');");
                    out.println("history.back();");
    out.println("</script>");
                           return;
                    }
                }
              
            }  
            Format format = Format.getCompactFormat();
            format.setEncoding("utf-8");//设置编码方式为gb2312
            format.setIndent("  ");//设置缩进（此处为一个tab键）
            XMLOutputter outputter = new XMLOutputter(format);
            outputter.output(readDocument, new FileOutputStream(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml")); 

              
   // 1.创建一个SAXBuilder对象
        SAXBuilder saxBuilder = new SAXBuilder();
 
        InputStream in;
        try {
            // 2.创建一个输入流，将xml文件加载到输入流
            in = new FileInputStream(request.getSession().getServletContext().getRealPath("/")+ "WEB-INF/"+ "reservations.xml");
            // 3.通过SAXBuilder的build方法将输入流加载到SAXBuilder中
            Document document = saxBuilder.build(in);
            // 4.通过Document对象获取xml文件的根节点
            Element rootElement = document.getRootElement();
            // 5.根据根节点获取子节点的List集合
            List<Element> bookList = rootElement.getChildren();
 
                  //创建父元素
        Element person1 = new Element("reservation");
        //把元素加入到根元素中
     

        Element person1_name = new Element("title");
        person1_name.setText(title);
        person1.addContent(person1_name);
        
        Element person1_address = new Element("username");
        person1_address.setText(username);
        person1.addContent(person1_address);
        
        
        Element person1_eamil = new Element("email");
        person1_eamil.setText(email);
        person1.addContent(person1_eamil);
           bookList.add(0, person1);    
            // 7.设置输出流和输出格式
          
          outputter = new XMLOutputter(format);
            outputter.output(document, new FileOutputStream(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "reservations.xml"));
            in.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (JDOMException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
                                    
%> 
<!DOCTYPE html>
<html>
    <%=title%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Book is reserved successfully! Click <a href="../index.jsp">here</a> to return to the main page.</p>
    </body>
</html>
