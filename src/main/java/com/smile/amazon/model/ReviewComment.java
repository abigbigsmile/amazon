package com.smile.amazon.model;

import java.util.Date;

public class ReviewComment {
    private Integer rcommentId;

    private Integer reviewId;

    private Integer userId;

    private Date rcommentTime;

    private String rcommentContent;

    public Integer getRcommentId() {
        return rcommentId;
    }

    public void setRcommentId(Integer rcommentId) {
        this.rcommentId = rcommentId;
    }

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getRcommentTime() {
        return rcommentTime;
    }

    public void setRcommentTime(Date rcommentTime) {
        this.rcommentTime = rcommentTime;
    }

    public String getRcommentContent() {
        return rcommentContent;
    }

    public void setRcommentContent(String rcommentContent) {
        this.rcommentContent = rcommentContent == null ? null : rcommentContent.trim();
    }
}