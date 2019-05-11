package com.smile.amazon.service.impl;

import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.mapper.BookMapper;
import com.smile.amazon.model.Book;
import com.smile.amazon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Book> bookList() {
        return bookMapper.bookList();
    }

    @Override
    public BookDetailDTO bookDetail(Integer bookId) {
        return bookMapper.bookDetailDTO(bookId);
    }
}
