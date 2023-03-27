package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CouponProductCategoryRelation;

public interface CouponProductCategoryRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CouponProductCategoryRelation record);

    int insertSelective(CouponProductCategoryRelation record);

    CouponProductCategoryRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CouponProductCategoryRelation record);

    int updateByPrimaryKey(CouponProductCategoryRelation record);
}