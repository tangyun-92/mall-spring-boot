package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OrderOperateHistory;

public interface OrderOperateHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderOperateHistory record);

    int insertSelective(OrderOperateHistory record);

    OrderOperateHistory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderOperateHistory record);

    int updateByPrimaryKey(OrderOperateHistory record);
}