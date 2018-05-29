package uts.wsd;
 
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.xml.bind.annotation.*;
 
@XmlAccessorType(XmlAccessType.FIELD)
public class book implements Serializable {

    private static final AtomicInteger count = new AtomicInteger(0);
    @XmlElement(name = "title")
    private String title;
    @XmlElement(name = "author")
    private String author;
    @XmlElement(name = "category")
    private String category;
    @XmlElement(name = "abstract")
    private String abst;
    @XmlElement(name = "username")
    private String username;
    @XmlElement(name = "isbn")
    private String isbn;
    @XmlElement(name = "edition")
    private String edition;
    @XmlElement(name = "year")
    private int year;
    @XmlElement(name = "publishername")
    private String publishername;
    @XmlElement(name = "condition")
    private String condition;
    @XmlElement(name = "availability")
    private String availability;

    public book() {
    }

    public book(String title, String author, String category, String abst, String username, String isbn, String edition, int year, String publishername, String condition, String available) {
        this.title = title;
        this.author = author;
        this.category = category;
        this.abst = abst;
        this.username = username;
        this.isbn = isbn;
        this.edition = edition;
        this.year = year;
        this.publishername = publishername;
        this.condition = condition;
        this.availability = available;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getAbst() {
        return abst;
    }

    public void setAbst(String abst) {
        this.abst = abst;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getPublishername() {
        return publishername;
    }

    public void setPublishername(String publishername) {
        this.publishername = publishername;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getBooktitle() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}