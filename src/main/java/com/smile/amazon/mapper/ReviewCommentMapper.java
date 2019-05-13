package com.smile.amazon.mapper;

import com.smile.amazon.model.ReviewComment;

public interface ReviewCommentMapper {
    int deleteByPrimaryKey(Integer rcommentId);

    int insert(ReviewComment record);

    int insertSelective(ReviewComment record);

    ReviewComment selectByPrimaryKey(Integer rcommentId);

    int updateByPrimaryKeySelective(ReviewComment record);

    int updateByPrimaryKey(ReviewComment record);
}