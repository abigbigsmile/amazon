package com.smile.amazon.service;

import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.dto.BookReviewDTO;
import com.smile.amazon.dto.ShoppingcartDTO;
import com.smile.amazon.model.Book;
import com.smile.amazon.model.Comment;
import com.smile.amazon.model.Review;
import com.smile.amazon.model.ReviewComment;

import java.util.List;

public interface BookService {

    List<Book> bookList();

    BookDetailDTO bookDetail(Integer bookId);

    Book selectByPrimaryKey(Integer id);

    int insertComment(Comment comment);

    int insertReview(Review review);

    int insertReviewComment(ReviewComment reviewComment);

    BookReviewDTO bookReviewDTO(Integer reviewId);

    ShoppingcartDTO shoppingcartDTO(Integer userId);
}
