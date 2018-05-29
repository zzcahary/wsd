package uts.wsd;
import java.io.*;
import javax.xml.bind.*;


public class bookApplication implements Serializable{
    private String filePath;
    private books books;
    
    public bookApplication() {

    }
    
    public bookApplication(String filePath, books books) {
        super();
        this.filePath = filePath;
        this.books = books;
    }
 
    
    public void setFilePath(String filePath) throws FileNotFoundException, JAXBException, IOException {
        this.filePath = filePath;
        // Create the unmarshaller
       JAXBContext jc = JAXBContext.newInstance(books.class);
        Unmarshaller u = jc.createUnmarshaller();
 
       // Now unmarshal the object from the file
       FileInputStream fin = new FileInputStream(filePath);
       books = (books)u.unmarshal(fin); // This loads the "shop" object
       fin.close();
    }
    public void updateXML(books books, String filePath) throws Exception {
        this.books = books;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(books.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(books, fout);
        fout.close();
    }
    
    // For the advanced step, you might consider adding a saveUsers() method here
    // to be used from the welcome.jsp page
    public void saveBook() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(books.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(books, fout);
        fout.close();
    }

    public books getBooks() {
        return books;
    }

    public void setBooks(books books) {
        this.books = books;
    }


    public book getBookList(books books) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Users getUsers() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public book getBook(String username) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}