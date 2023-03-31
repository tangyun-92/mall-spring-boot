package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.SmsCouponProductRelation;

public interface SmsCouponProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsCouponProductRelation record);

    int insertSelective(SmsCouponProductRelation record);

    SmsCouponProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsCouponProductRelation record);

    int updateByPrimaryKey(SmsCouponProductRelation record);
}