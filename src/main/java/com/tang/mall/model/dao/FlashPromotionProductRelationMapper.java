package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.FlashPromotionProductRelation;

public interface FlashPromotionProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FlashPromotionProductRelation record);

    int insertSelective(FlashPromotionProductRelation record);

    FlashPromotionProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FlashPromotionProductRelation record);

    int updateByPrimaryKey(FlashPromotionProductRelation record);
}