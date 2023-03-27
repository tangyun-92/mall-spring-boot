package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductAttributeCategory;

public interface ProductAttributeCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductAttributeCategory record);

    int insertSelective(ProductAttributeCategory record);

    ProductAttributeCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductAttributeCategory record);

    int updateByPrimaryKey(ProductAttributeCategory record);
}