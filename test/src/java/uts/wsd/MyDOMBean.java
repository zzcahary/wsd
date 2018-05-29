/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author Administrator
 */
public class MyDOMBean implements java.io.Serializable {
   private static String xmlStr="";
   private static final String PATH="file:///";
   public MyDOMBean(){
   }
 
   public String getString(){
        return xmlStr;
   }
 
   public static Document getDocument(String filename) throws Exception {
       xmlStr="";
       DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        // 设定解析的叁数
        dbf.setIgnoringComments(true);
        dbf.setIgnoringElementContentWhitespace(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        //导入XML文件
        Document doc = db.parse(PATH+filename);
        
       return doc;
   }
 
     public void traverseTree(Node node) throws Exception {
         if(node == null){
            return;
         }
         int type = node.getNodeType();
 
         switch (type) {
            // 操作DOCUMENT对象节点
            case Node.DOCUMENT_NODE: {
               xmlStr+="<tr>";
               traverseTree(((Document)node).getDocumentElement());
               break;
            }
            // 操作XML元素节点
            case Node.ELEMENT_NODE: {
               String elementName = node.getNodeName();
               if(elementName.equals("person")) {
                 xmlStr+="</tr><tr>";
               }
               NodeList childNodes =node.getChildNodes();
               if(childNodes != null) {
                  int length = childNodes.getLength();
                  for (int loopIndex = 0; loopIndex <
                  length ; loopIndex++)
                  {
                     traverseTree(childNodes.item(loopIndex));
                  }
               }
               break;
            }
            // 操作XML文本节点
            case Node.TEXT_NODE: {
               String data = node.getNodeValue().trim();
               if((data.indexOf(" ")  <0) && (data.length()> 0)) {
                 xmlStr+="<td>"+data+"</td>";
               }
            }
         }
    }
 
}