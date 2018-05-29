/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "books")

public class books implements Serializable {
        @XmlElement(name = "book")
    private ArrayList<book> list = new ArrayList<book>();
        
     public ArrayList<book> getBooks() {
        return list;
    }
        
    public ArrayList<book> getList() {
        return list;
    }
    public void addBook(book book) {
        list.add(book);
    }
    public void removeBook(book book) {
        list.remove(book);
    }
        // function to get book with matching username
    public book getBook(String username) {
        for (book book : list) {
            if (book.getUsername().equals(username)) {
                return book; //the email is not registered yet.
            }
        }
        return null;
    }
        // function to get book with maching title
    public book getBookByTitle(String title) {
        for (book book : list) {
            if (book.getTitle().equals(title)) {
                return book; //the email is not registered yet.
            }
        }
        return null;
    }
    
    
    public void addAll(ArrayList<book> books) {
        list.removeAll(list);
        for (book book : books) {
            list.add(book);
            }
             
    }
 
    public ArrayList<book> getBooksByUsername(String username) {
         ArrayList<book> bookList = new ArrayList<>();
        for (book book : list) {
            if (book.getUsername().equals(username)) {
                bookList.add(book);
            }
        }
        return bookList;
    }      
    public ArrayList<book> getBooksByTitle(String title) {
        ArrayList<book> bookList = new ArrayList<>();
        for (book book : list) {
            if (book.getTitle().equals(title)) {
                bookList.add(book);
            }
        }
        return bookList;
    }      
    public books getBooksList(books books){
        books newBooks = new books();
        ArrayList<book> storedBooks = books.getBooks();
        ArrayList<book> booklist = newBooks.getBooks();        
        int size;
        boolean match;
            for (book storedBook : storedBooks) {
                        String storedBooktitle = storedBook.getTitle();
                        if(booklist.isEmpty()) {
                            newBooks.addBook(storedBook);
                        }
                        else {
                            size = booklist.size();
                            for(int i = 0; i < size; i++) { 
                                match = booklist.get(i).getTitle().equals(storedBooktitle);
                                if(match) {
                                    break;
                                }
                                else if(!match && i == size - 1) {
                                    booklist.add(storedBook);
                                }
                            }
                    }
                }            
            return newBooks;
        }


}