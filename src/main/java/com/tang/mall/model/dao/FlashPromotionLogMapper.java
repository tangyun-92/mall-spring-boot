package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.FlashPromotionLog;

public interface FlashPromotionLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FlashPromotionLog record);

    int insertSelective(FlashPromotionLog record);

    FlashPromotionLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FlashPromotionLog record);

    int updateByPrimaryKey(FlashPromotionLog record);
}