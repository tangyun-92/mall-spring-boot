package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.SmsFlashPromotion;

public interface SmsFlashPromotionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsFlashPromotion record);

    int insertSelective(SmsFlashPromotion record);

    SmsFlashPromotion selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsFlashPromotion record);

    int updateByPrimaryKey(SmsFlashPromotion record);
}