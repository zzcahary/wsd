/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap;

import java.io.IOException;
import javax.jws.WebService;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import uts.wsd.User;
import uts.wsd.Users;
import uts.wsd.bookApplication;  
import uts.wsd.book;
import uts.wsd.books;

/**
 *
 * @author tinkon
 */
@WebService(serviceName = "BookSoap")
public class BookSoap {
    	@Resource
	private WebServiceContext context;
	
	private bookApplication getBookApp() throws JAXBException, IOException {
		ServletContext application = (ServletContext)context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);
		synchronized (application) {
		bookApplication BookApp = (bookApplication)application.getAttribute("BookApp");
	    if (BookApp == null) {
	    	BookApp = new bookApplication();
	    	BookApp.setFilePath(application.getRealPath("book.xml"));
	    	application.setAttribute("BookApp", BookApp);
	   }
	   return BookApp;
	}
      }
    
        public Users fetchUsers(){
            try {
                return getBookApp().getUsers();
            } catch (JAXBException ex) {
                Logger.getLogger(BookSoap.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(BookSoap.class.getName()).log(Level.SEVERE, null, ex);
            }
            return null;
	}

	
        
        
	public User fetchUser(String email) {
            try {
                return getBookApp().getUsers().getUser(email);
            } catch (JAXBException ex) {
                Logger.getLogger(BookSoap.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(BookSoap.class.getName()).log(Level.SEVERE, null, ex);
            }
		return null;
	}
        
        
    @WebMethod
    public books fetchBooks() throws IOException, JAXBException{
        return getBookApp().getBooks();
    }
    
    @WebMethod
    public book fetchBook(String username) throws IOException, JAXBException{
        return  getBookApp().getBook(username);
    }
    
    @WebMethod
    public book fetchBookList(books books) throws IOException, JAXBException{
        return  getBookApp().getBookList(books);
    }
}
