package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.SmsFlashPromotionProductSession;

public interface SmsFlashPromotionProductSessionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsFlashPromotionProductSession record);

    int insertSelective(SmsFlashPromotionProductSession record);

    SmsFlashPromotionProductSession selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsFlashPromotionProductSession record);

    int updateByPrimaryKey(SmsFlashPromotionProductSession record);
}