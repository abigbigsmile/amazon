package com.smile.amazon.service.impl;

import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.dto.BookReviewDTO;
import com.smile.amazon.mapper.BookMapper;
import com.smile.amazon.mapper.CommentMapper;
import com.smile.amazon.mapper.ReviewCommentMapper;
import com.smile.amazon.mapper.ReviewMapper;
import com.smile.amazon.model.Book;
import com.smile.amazon.model.Comment;
import com.smile.amazon.model.Review;
import com.smile.amazon.model.ReviewComment;
import com.smile.amazon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Autowired
    private ReviewMapper reviewMapper;

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private ReviewCommentMapper reviewCommentMapper;

    @Override
    public List<Book> bookList() {
        return bookMapper.bookList();
    }

    @Override
    public BookDetailDTO bookDetail(Integer bookId) {
        return bookMapper.bookDetailDTO(bookId);
    }

    @Override
    public Book selectByPrimaryKey(Integer id) {
        return bookMapper.selectByPrimaryKey(id);
    }

    @Override
    public int insertComment(Comment comment) {
        return commentMapper.insert(comment);
    }

    @Override
    public int insertReview(Review review) {
        return reviewMapper.insertSelective(review);
    }

    @Override
    public int insertReviewComment(ReviewComment reviewComment) {
        return reviewCommentMapper.insert(reviewComment);
    }

    @Override
    public BookReviewDTO bookReviewDTO(Integer reviewId) {
        return bookMapper.bookReviewDTO(reviewId);
    }
}
