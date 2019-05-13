package com.smile.amazon.dto;

import com.smile.amazon.model.Book;
import com.smile.amazon.model.Review;
import com.smile.amazon.model.ReviewComment;
import com.smile.amazon.queryVO.ReviewCommentQueryVO;
import com.smile.amazon.queryVO.ReviewQueryVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookReviewDTO extends Review{

    private Book book;

    private String userName;

    private String image;

    private List<ReviewCommentQueryVO> reviewCommentList;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<ReviewCommentQueryVO> getReviewCommentList() {
        return reviewCommentList;
    }

    public void setReviewCommentList(List<ReviewCommentQueryVO> reviewCommentList) {
        this.reviewCommentList = reviewCommentList;
    }
}
