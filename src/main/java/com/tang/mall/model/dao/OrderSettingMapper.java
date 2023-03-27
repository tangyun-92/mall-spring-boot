package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OrderSetting;

public interface OrderSettingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderSetting record);

    int insertSelective(OrderSetting record);

    OrderSetting selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderSetting record);

    int updateByPrimaryKey(OrderSetting record);
}