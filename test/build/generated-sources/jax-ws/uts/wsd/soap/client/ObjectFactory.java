
package uts.wsd.soap.client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the uts.wsd.soap.client package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _IOException_QNAME = new QName("http://soap.wsd.uts/", "IOException");
    private final static QName _JAXBException_QNAME = new QName("http://soap.wsd.uts/", "JAXBException");
    private final static QName _Book_QNAME = new QName("http://soap.wsd.uts/", "book");
    private final static QName _Books_QNAME = new QName("http://soap.wsd.uts/", "books");
    private final static QName _FetchBook_QNAME = new QName("http://soap.wsd.uts/", "fetchBook");
    private final static QName _FetchBookList_QNAME = new QName("http://soap.wsd.uts/", "fetchBookList");
    private final static QName _FetchBookListResponse_QNAME = new QName("http://soap.wsd.uts/", "fetchBookListResponse");
    private final static QName _FetchBookResponse_QNAME = new QName("http://soap.wsd.uts/", "fetchBookResponse");
    private final static QName _FetchBooks_QNAME = new QName("http://soap.wsd.uts/", "fetchBooks");
    private final static QName _FetchBooksResponse_QNAME = new QName("http://soap.wsd.uts/", "fetchBooksResponse");
    private final static QName _FetchUser_QNAME = new QName("http://soap.wsd.uts/", "fetchUser");
    private final static QName _FetchUserResponse_QNAME = new QName("http://soap.wsd.uts/", "fetchUserResponse");
    private final static QName _FetchUsers_QNAME = new QName("http://soap.wsd.uts/", "fetchUsers");
    private final static QName _FetchUsersResponse_QNAME = new QName("http://soap.wsd.uts/", "fetchUsersResponse");
    private final static QName _Users_QNAME = new QName("http://soap.wsd.uts/", "users");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: uts.wsd.soap.client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link IOException }
     * 
     */
    public IOException createIOException() {
        return new IOException();
    }

    /**
     * Create an instance of {@link JAXBException }
     * 
     */
    public JAXBException createJAXBException() {
        return new JAXBException();
    }

    /**
     * Create an instance of {@link Book }
     * 
     */
    public Book createBook() {
        return new Book();
    }

    /**
     * Create an instance of {@link Books }
     * 
     */
    public Books createBooks() {
        return new Books();
    }

    /**
     * Create an instance of {@link FetchBook }
     * 
     */
    public FetchBook createFetchBook() {
        return new FetchBook();
    }

    /**
     * Create an instance of {@link FetchBookList }
     * 
     */
    public FetchBookList createFetchBookList() {
        return new FetchBookList();
    }

    /**
     * Create an instance of {@link FetchBookListResponse }
     * 
     */
    public FetchBookListResponse createFetchBookListResponse() {
        return new FetchBookListResponse();
    }

    /**
     * Create an instance of {@link FetchBookResponse }
     * 
     */
    public FetchBookResponse createFetchBookResponse() {
        return new FetchBookResponse();
    }

    /**
     * Create an instance of {@link FetchBooks }
     * 
     */
    public FetchBooks createFetchBooks() {
        return new FetchBooks();
    }

    /**
     * Create an instance of {@link FetchBooksResponse }
     * 
     */
    public FetchBooksResponse createFetchBooksResponse() {
        return new FetchBooksResponse();
    }

    /**
     * Create an instance of {@link FetchUser }
     * 
     */
    public FetchUser createFetchUser() {
        return new FetchUser();
    }

    /**
     * Create an instance of {@link FetchUserResponse }
     * 
     */
    public FetchUserResponse createFetchUserResponse() {
        return new FetchUserResponse();
    }

    /**
     * Create an instance of {@link FetchUsers }
     * 
     */
    public FetchUsers createFetchUsers() {
        return new FetchUsers();
    }

    /**
     * Create an instance of {@link FetchUsersResponse }
     * 
     */
    public FetchUsersResponse createFetchUsersResponse() {
        return new FetchUsersResponse();
    }

    /**
     * Create an instance of {@link Users }
     * 
     */
    public Users createUsers() {
        return new Users();
    }

    /**
     * Create an instance of {@link User }
     * 
     */
    public User createUser() {
        return new User();
    }

    /**
     * Create an instance of {@link Throwable }
     * 
     */
    public Throwable createThrowable() {
        return new Throwable();
    }

    /**
     * Create an instance of {@link StackTraceElement }
     * 
     */
    public StackTraceElement createStackTraceElement() {
        return new StackTraceElement();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IOException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "IOException")
    public JAXBElement<IOException> createIOException(IOException value) {
        return new JAXBElement<IOException>(_IOException_QNAME, IOException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link JAXBException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "JAXBException")
    public JAXBElement<JAXBException> createJAXBException(JAXBException value) {
        return new JAXBElement<JAXBException>(_JAXBException_QNAME, JAXBException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Book }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "book")
    public JAXBElement<Book> createBook(Book value) {
        return new JAXBElement<Book>(_Book_QNAME, Book.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Books }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "books")
    public JAXBElement<Books> createBooks(Books value) {
        return new JAXBElement<Books>(_Books_QNAME, Books.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBook }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBook")
    public JAXBElement<FetchBook> createFetchBook(FetchBook value) {
        return new JAXBElement<FetchBook>(_FetchBook_QNAME, FetchBook.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBookList }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBookList")
    public JAXBElement<FetchBookList> createFetchBookList(FetchBookList value) {
        return new JAXBElement<FetchBookList>(_FetchBookList_QNAME, FetchBookList.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBookListResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBookListResponse")
    public JAXBElement<FetchBookListResponse> createFetchBookListResponse(FetchBookListResponse value) {
        return new JAXBElement<FetchBookListResponse>(_FetchBookListResponse_QNAME, FetchBookListResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBookResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBookResponse")
    public JAXBElement<FetchBookResponse> createFetchBookResponse(FetchBookResponse value) {
        return new JAXBElement<FetchBookResponse>(_FetchBookResponse_QNAME, FetchBookResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBooks }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBooks")
    public JAXBElement<FetchBooks> createFetchBooks(FetchBooks value) {
        return new JAXBElement<FetchBooks>(_FetchBooks_QNAME, FetchBooks.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBooksResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchBooksResponse")
    public JAXBElement<FetchBooksResponse> createFetchBooksResponse(FetchBooksResponse value) {
        return new JAXBElement<FetchBooksResponse>(_FetchBooksResponse_QNAME, FetchBooksResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchUser")
    public JAXBElement<FetchUser> createFetchUser(FetchUser value) {
        return new JAXBElement<FetchUser>(_FetchUser_QNAME, FetchUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchUserResponse")
    public JAXBElement<FetchUserResponse> createFetchUserResponse(FetchUserResponse value) {
        return new JAXBElement<FetchUserResponse>(_FetchUserResponse_QNAME, FetchUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUsers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchUsers")
    public JAXBElement<FetchUsers> createFetchUsers(FetchUsers value) {
        return new JAXBElement<FetchUsers>(_FetchUsers_QNAME, FetchUsers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUsersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "fetchUsersResponse")
    public JAXBElement<FetchUsersResponse> createFetchUsersResponse(FetchUsersResponse value) {
        return new JAXBElement<FetchUsersResponse>(_FetchUsersResponse_QNAME, FetchUsersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Users }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.wsd.uts/", name = "users")
    public JAXBElement<Users> createUsers(Users value) {
        return new JAXBElement<Users>(_Users_QNAME, Users.class, null, value);
    }

}
