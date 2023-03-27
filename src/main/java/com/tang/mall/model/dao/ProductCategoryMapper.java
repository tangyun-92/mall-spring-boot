package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductCategory;

public interface ProductCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductCategory record);

    int insertSelective(ProductCategory record);

    ProductCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductCategory record);

    int updateByPrimaryKeyWithBLOBs(ProductCategory record);

    int updateByPrimaryKey(ProductCategory record);
}