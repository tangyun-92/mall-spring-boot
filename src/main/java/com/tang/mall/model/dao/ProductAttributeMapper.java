package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductAttribute;

public interface ProductAttributeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductAttribute record);

    int insertSelective(ProductAttribute record);

    ProductAttribute selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductAttribute record);

    int updateByPrimaryKey(ProductAttribute record);
}