package com.smile.amazon.mapper;

import com.smile.amazon.model.Star;

public interface StarMapper {
    int deleteByPrimaryKey(Integer starId);

    int insert(Star record);

    int insertSelective(Star record);

    Star selectByPrimaryKey(Integer starId);

    int updateByPrimaryKeySelective(Star record);

    int updateByPrimaryKey(Star record);
}