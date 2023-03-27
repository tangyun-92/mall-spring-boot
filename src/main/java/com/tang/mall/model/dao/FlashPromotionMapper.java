package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.FlashPromotion;

public interface FlashPromotionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FlashPromotion record);

    int insertSelective(FlashPromotion record);

    FlashPromotion selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FlashPromotion record);

    int updateByPrimaryKey(FlashPromotion record);
}