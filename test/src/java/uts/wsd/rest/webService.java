package uts.wsd.rest;

import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import uts.wsd.webApplication;
import uts.wsd.User;
import uts.wsd.Users;

@Path("/webApp")
public class webService {

    @Context
    private ServletContext application;

    private webApplication getWebApp() throws JAXBException, IOException, Exception {
        // The web server can handle requests from different clients in parallel.
        // These are called "threads".
        //
        // We do NOT want other threads to manipulate the application object at the same
        // time that we are manipulating it, otherwise bad things could happen.
        //
        // The "synchronized" keyword is used to lock the application object while
        // we're manpulating it.
        synchronized (application) {
            webApplication webApp = (webApplication) application.getAttribute("webApp");
            if (webApp == null) {
                webApp = new webApplication();
                webApp.setFilePath(application.getRealPath("WEB-INF/users.xml"));
                application.setAttribute("webApp", webApp);
            }
            return webApp;
        }
    }

  
    @Path("users")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Users getUsers() throws JAXBException, IOException, Exception {
        return getWebApp().getUsers();
    }

    @Path("users/{email}")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public User getUser(@PathParam("email") String email) throws JAXBException, IOException, Exception {
        return getWebApp().getUsers().getUser(email);
    }

    @Path("users")
    @POST
    @Consumes(MediaType.APPLICATION_XML)
    public void addUser(User user) throws IOException, Exception {
        getWebApp().getUsers().addUser(user);
        getWebApp().saveUsers();
    }
}