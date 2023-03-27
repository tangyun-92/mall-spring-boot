package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CouponProductRelation;

public interface CouponProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CouponProductRelation record);

    int insertSelective(CouponProductRelation record);

    CouponProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CouponProductRelation record);

    int updateByPrimaryKey(CouponProductRelation record);
}