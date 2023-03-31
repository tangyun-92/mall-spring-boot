package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.OmsCartItem;

public interface OmsCartItemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OmsCartItem record);

    int insertSelective(OmsCartItem record);

    OmsCartItem selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OmsCartItem record);

    int updateByPrimaryKey(OmsCartItem record);
}