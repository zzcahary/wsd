/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.jdom.Comment;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

public class JDomOutput
{
    
    public static void updateXML(){
        SAXBuilder sb = new SAXBuilder();
        Document doc = null;
        try {
            doc = sb.build("person.xml");
            Element root = doc.getRootElement();
            List<Element> list = root.getChildren("person");
            for (Element el : list) {
                if (el.getAttributeValue("id").equals("ID001")) {
                    Element name = el.getChild("name");
                    name.setText("xingoo---update");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        saveXML(doc);
    }
  public static void saveXML(Document doc) {
        // 将doc对象输出到文件
        try {
            // 创建xml文件输出流
            XMLOutputter xmlopt = new XMLOutputter();

            // 创建文件输出流
            FileWriter writer = new FileWriter("person.xml");

            // 指定文档格式
            Format fm = Format.getPrettyFormat();
            // fm.setEncoding("GB2312");
            xmlopt.setFormat(fm);

            // 将doc写入到指定的文件中
            xmlopt.output(doc, writer);
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 public static Document write(String title,String username,String email) throws FileNotFoundException, IOException{
    //创建文档
        Document document = new Document();
        //创建根元素
        Element reservation = new Element("reservation");
        //把根元素加入到document中
        document.addContent(reservation); 
        
        //创建注释
        Comment rootComment = new Comment("将数据从程序输出到XML中！");
        reservation.addContent(rootComment);
        
        //创建父元素
        Element person1 = new Element("person");
        //把元素加入到根元素中
        reservation.addContent(person1);

        Element person1_name = new Element("title");
        person1_name.setText(title);
        person1.addContent(person1_name);
        
        Element person1_address = new Element("username");
        person1_address.setText(username);
        person1.addContent(person1_address);
        
        
        Element person1_eamil = new Element("email");
        person1_eamil.setText(email);
        person1.addContent(person1_eamil);

  
        
        
        //得到xml输出流
//        XMLOutputter out = new XMLOutputter(format);
//          out.output(document, new FileOutputStream("jdom.xml"));//或者FileWriter
        //把数据输出到xml中
        return document;
      
 }
}