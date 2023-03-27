package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CartItem;

public interface CartItemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CartItem record);

    int insertSelective(CartItem record);

    CartItem selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CartItem record);

    int updateByPrimaryKey(CartItem record);
}