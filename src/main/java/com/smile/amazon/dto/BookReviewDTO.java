package com.smile.amazon.dto;

import com.smile.amazon.model.Book;
import com.smile.amazon.model.Review;
import com.smile.amazon.queryVO.ReviewQueryVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookReviewDTO extends Book{

    private List<ReviewQueryVO> reviewQueryList;

    public List<ReviewQueryVO> getReviewQueryList() {
        return reviewQueryList;
    }

    public void setReviewQueryList(List<ReviewQueryVO> reviewQueryList) {
        this.reviewQueryList = reviewQueryList;
    }
}
