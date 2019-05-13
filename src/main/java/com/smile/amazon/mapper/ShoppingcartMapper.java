package com.smile.amazon.mapper;

import com.smile.amazon.dto.ShoppingcartDTO;
import com.smile.amazon.model.Shoppingcart;

public interface ShoppingcartMapper {
    int deleteByPrimaryKey(Integer cartId);

    int insert(Shoppingcart record);

    int insertSelective(Shoppingcart record);

    Shoppingcart selectByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Shoppingcart record);

    int updateByPrimaryKey(Shoppingcart record);

    ShoppingcartDTO selectShoppingcartDTOByUserId(Integer userId);
}