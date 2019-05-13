package com.smile.amazon.mapper;

import com.smile.amazon.model.PurchaseList;

public interface PurchaseListMapper {
    int insert(PurchaseList record);

    int insertSelective(PurchaseList record);
}