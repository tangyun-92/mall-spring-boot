package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductAttributeValue;

public interface ProductAttributeValueMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductAttributeValue record);

    int insertSelective(ProductAttributeValue record);

    ProductAttributeValue selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductAttributeValue record);

    int updateByPrimaryKey(ProductAttributeValue record);
}