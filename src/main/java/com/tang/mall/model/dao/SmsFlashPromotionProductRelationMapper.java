package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SmsFlashPromotionProductRelation;

public interface SmsFlashPromotionProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsFlashPromotionProductRelation record);

    int insertSelective(SmsFlashPromotionProductRelation record);

    SmsFlashPromotionProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsFlashPromotionProductRelation record);

    int updateByPrimaryKey(SmsFlashPromotionProductRelation record);
}