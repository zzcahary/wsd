<%-- 
    Document   : saveSuccess
    Created on : 2018-5-24, 2:32:46
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
  
      
        
        String path = request.getContextPath(); 
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
         request.setCharacterEncoding("utf-8");
       
       String bookTitle = request.getParameter("bookTitle");//用request得到 

         String author = request.getParameter("author");//用request得到 
           String category = request.getParameter("category");//用request得到 
           String abstracts = request.getParameter("abstract"); //用request得到 
           
               String eddition = request.getParameter("eddition");//用request得到   
               String ISBN = request.getParameter("ISBN");//用request得到
                String year = request.getParameter("year");//用request得到  
                 String publisher = request.getParameter("publisher");//用request得到 
                   String condition = request.getParameter("condition");//用request得到  
                   String availability = request.getParameter("availability");//用request得到 
                   
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
            // 5.根据根节点获取子节点的List集合
            List<Element> bookList = rootElement.getChildren();
    Element el1=null;
                       for (Element el : bookList) {
                
                if (bookTitle.equals(el.getChildText("title"))&&author.equals(el.getChildText("author"))) {
                    if(el.getChildText("username").equals(user.getName())){
                       el1=el;  
                    }
                  
                }
            }
               if(el1==null){
                               //创建父元素
        Element person1 = new Element("book");
        //把元素加入到根元素中
        Element person1_name = new Element("title");
        person1_name.setText(bookTitle);
        person1.addContent(person1_name);
        
        Element person1_author = new Element("author");
        person1_author.setText(author);
        person1.addContent(person1_author);
        
        
        Element person1_category = new Element("category");
        person1_category.setText(category);
        person1.addContent(person1_category);
        
        Element person1_abstract = new Element("abstract");
        person1_abstract.setText(abstracts);
        person1.addContent(person1_abstract);
        
                Element person1_username = new Element("username");
        person1_username.setText(user.getName());
        person1.addContent(person1_username);
         int b = (int)(Math.random()*(9999-1000+1))+1000;
      Element person1_id = new Element("id");
        person1_id.setText(b+"");
        person1.addContent(person1_id);
        
      
            Element person1_isbn = new Element("isbn");
        person1_isbn.setText(ISBN);
        person1.addContent(person1_isbn);
        
        Element person1_edition= new Element("edition");
        person1_edition.setText(eddition);
        person1.addContent(person1_edition); 
        
        Element person1_year= new Element("year");
        person1_year.setText(year);
        person1.addContent(person1_year); 
       
        
        Element person1_publisher =new Element("publishername");
        person1_publisher.setText(publisher);
        person1.addContent(person1_publisher); 
        
         Element person1_condition= new Element("condition");
        person1_condition.setText(condition);
        person1.addContent(person1_condition); 

         Element person1_availability= new Element("availability");
        person1_availability.setText(availability);
        person1.addContent(person1_availability); 
        
        Element person1_num= new Element("num");
        person1_num.setText("1");
        person1.addContent(person1_num); 
           bookList.add(0, person1);    
           
            // 7.设置输出流和输出格式
             Format format = Format.getCompactFormat();
            format.setEncoding("utf-8");//设置编码方式为gb2312
            format.setIndent("  ");//设置缩进（此处为一个tab键）
            XMLOutputter outputter = new XMLOutputter(format);
          
          outputter = new XMLOutputter(format);
            outputter.output(document, new FileOutputStream(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml"));
            in.close();
      
               } else{
                    
                        System.err.print(Integer.valueOf(el1.getChildText("num")));
                       Element num= el1.getChild("num");
                      int nums= Integer.valueOf(el1.getChildText("num"))+1;
                       num.setText(nums+"");
                           // 7.设置输出流和输出格式
             Format format = Format.getCompactFormat();
            format.setEncoding("utf-8");//设置编码方式为gb2312
            format.setIndent("  ");//设置缩进（此处为一个tab键）
            XMLOutputter outputter = new XMLOutputter(format);
          
          outputter = new XMLOutputter(format);
            outputter.output(document, new FileOutputStream(request.getSession().getServletContext()
                .getRealPath("/")+ "WEB-INF/"+ "book.xml"));
            in.close();
               }       
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
        <p>Book is added successfully! Click <a href="listings.jsp">here</a> to return to the listings page.</p>
    </body>
</html>
