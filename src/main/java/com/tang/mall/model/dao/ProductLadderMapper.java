package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductLadder;

public interface ProductLadderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductLadder record);

    int insertSelective(ProductLadder record);

    ProductLadder selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductLadder record);

    int updateByPrimaryKey(ProductLadder record);
}