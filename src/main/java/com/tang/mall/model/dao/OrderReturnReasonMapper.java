package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OrderReturnReason;

public interface OrderReturnReasonMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderReturnReason record);

    int insertSelective(OrderReturnReason record);

    OrderReturnReason selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderReturnReason record);

    int updateByPrimaryKey(OrderReturnReason record);
}