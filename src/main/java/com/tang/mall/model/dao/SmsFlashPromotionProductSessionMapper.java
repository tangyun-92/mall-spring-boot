package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SmsFlashPromotionProductSession;

public interface SmsFlashPromotionProductSessionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsFlashPromotionProductSession record);

    int insertSelective(SmsFlashPromotionProductSession record);

    SmsFlashPromotionProductSession selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsFlashPromotionProductSession record);

    int updateByPrimaryKey(SmsFlashPromotionProductSession record);
}