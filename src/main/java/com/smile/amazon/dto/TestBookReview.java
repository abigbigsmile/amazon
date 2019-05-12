package com.smile.amazon.dto;

import com.smile.amazon.model.Book;
import com.smile.amazon.model.Review;

import java.util.List;

public class TestBookReview extends Book {

    private List<Review> reviewList;

    public List<Review> getReviewList() {
        return reviewList;
    }

    public void setReviewList(List<Review> reviewList) {
        this.reviewList = reviewList;
    }
}
