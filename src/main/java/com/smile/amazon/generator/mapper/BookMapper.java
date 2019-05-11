package com.smile.amazon.generator.mapper;

import com.smile.amazon.generator.model.Book;
import com.smile.amazon.generator.model.BookWithBLOBs;

public interface BookMapper {
    int deleteByPrimaryKey(Integer bookId);

    int insert(BookWithBLOBs record);

    int insertSelective(BookWithBLOBs record);

    BookWithBLOBs selectByPrimaryKey(Integer bookId);

    int updateByPrimaryKeySelective(BookWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(BookWithBLOBs record);

    int updateByPrimaryKey(Book record);
}