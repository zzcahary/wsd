package uts.wsd.rest;

import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import uts.wsd.bookApplication;
import uts.wsd.book;
import uts.wsd.books;

@Path("/bookApp")
public class bookService {

    @Context
    private ServletContext application;

    private bookApplication getBookApp() throws JAXBException, IOException, Exception {
        // The web server can handle requests from different clients in parallel.
        // These are called "threads".
        //
        // We do NOT want other threads to manipulate the application object at the same
        // time that we are manipulating it, otherwise bad things could happen.
        //
        // The "synchronized" keyword is used to lock the application object while
        // we're manpulating it.
        synchronized (application) {
            bookApplication bookApp = (bookApplication) application.getAttribute("bookApp");
            if (bookApp == null) {
                bookApp = new bookApplication();
                bookApp.setFilePath(application.getRealPath("WEB-INF/book.xml"));
                application.setAttribute("bookApp", bookApp);
            }
            return bookApp;
        }
    }

  
   @Path("books")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public books getBooks() throws Exception {
        return getBookApp().getBooks();
    }


    
    @POST
    @Consumes(MediaType.APPLICATION_XML)
    @Path("books")
    public void addBooks(book book) throws Exception {
        getBookApp().getBooks().addBook(book);
        getBookApp().saveBook();
    }
    
    @GET
    @Path("books/{username}")
    @Produces(MediaType.APPLICATION_XML)
    public ArrayList<book> getBook(@PathParam("username") String username) throws Exception {
        return getBookApp().getBooks().getBooksByUsername(username);
    }

    
}