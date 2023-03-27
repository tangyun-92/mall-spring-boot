package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductCategoryAttributeRelation;

public interface ProductCategoryAttributeRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductCategoryAttributeRelation record);

    int insertSelective(ProductCategoryAttributeRelation record);

    ProductCategoryAttributeRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductCategoryAttributeRelation record);

    int updateByPrimaryKey(ProductCategoryAttributeRelation record);
}