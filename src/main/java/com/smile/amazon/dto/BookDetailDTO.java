package com.smile.amazon.dto;


import com.smile.amazon.model.Book;
import com.smile.amazon.model.Review;
import com.smile.amazon.model.Star;
import com.smile.amazon.queryVO.CommentQueryVO;
import com.smile.amazon.queryVO.ReviewQueryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class BookDetailDTO extends Book {

    @Autowired
    private Star star;

    private List<CommentQueryVO> commentList;

    private int commentCount;

    private List<ReviewQueryVO> reviewList;

    private int reviewCount;

    public Star getStar() {
        return star;
    }

    public void setStar(Star star) {
        this.star = star;
    }

    public List<CommentQueryVO> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<CommentQueryVO> commentList) {
        this.commentList = commentList;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public List<ReviewQueryVO> getReviewList() {
        return reviewList;
    }

    public void setReviewList(List<ReviewQueryVO> reviewList) {
        this.reviewList = reviewList;
    }

    public int getReviewCount() {
        return reviewCount;
    }

    public void setReviewCount(int reviewCount) {
        this.reviewCount = reviewCount;
    }
}
