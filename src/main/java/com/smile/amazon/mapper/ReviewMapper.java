package com.smile.amazon.mapper;

import com.smile.amazon.dto.TestBookReview;
import com.smile.amazon.model.Review;

public interface ReviewMapper {
    int deleteByPrimaryKey(Integer reviewId);

    int insert(Review record);

    int insertSelective(Review record);

    Review selectByPrimaryKey(Integer reviewId);

    int updateByPrimaryKeySelective(Review record);

    int updateByPrimaryKey(Review record);

    TestBookReview getBookReview(int bookId);
}