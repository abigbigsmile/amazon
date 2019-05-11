package com.smile.amazon.model;

import org.springframework.stereotype.Repository;

@Repository
public class Star {
    private Integer starId;

    private Integer bookId;

    private Short starOneNum;

    private Short starTwoNum;

    private Short starThreeNum;

    private Short starFourNum;

    private Short starFiveNum;

    public Integer getStarId() {
        return starId;
    }

    public void setStarId(Integer starId) {
        this.starId = starId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Short getStarOneNum() {
        return starOneNum;
    }

    public void setStarOneNum(Short starOneNum) {
        this.starOneNum = starOneNum;
    }

    public Short getStarTwoNum() {
        return starTwoNum;
    }

    public void setStarTwoNum(Short starTwoNum) {
        this.starTwoNum = starTwoNum;
    }

    public Short getStarThreeNum() {
        return starThreeNum;
    }

    public void setStarThreeNum(Short starThreeNum) {
        this.starThreeNum = starThreeNum;
    }

    public Short getStarFourNum() {
        return starFourNum;
    }

    public void setStarFourNum(Short starFourNum) {
        this.starFourNum = starFourNum;
    }

    public Short getStarFiveNum() {
        return starFiveNum;
    }

    public void setStarFiveNum(Short starFiveNum) {
        this.starFiveNum = starFiveNum;
    }
}