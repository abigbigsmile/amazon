package com.smile.amazon.service;

import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.model.Book;

import java.util.List;

public interface BookService {

    List<Book> bookList();

    BookDetailDTO bookDetail(Integer bookId);

}
