package com.Esraa.BookBroker.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.Esraa.BookBroker.models.Book;

public interface BookRepository extends CrudRepository<Book, Long> {

    // this method retrieves all the books from the database
    List<Book> findAll();

    // List<Book> ByBorrowedContaining(String string);

}
