package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.FlashPromotionProductSession;

public interface FlashPromotionProductSessionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FlashPromotionProductSession record);

    int insertSelective(FlashPromotionProductSession record);

    FlashPromotionProductSession selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FlashPromotionProductSession record);

    int updateByPrimaryKey(FlashPromotionProductSession record);
}