package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OrderReturnApply;

public interface OrderReturnApplyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderReturnApply record);

    int insertSelective(OrderReturnApply record);

    OrderReturnApply selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderReturnApply record);

    int updateByPrimaryKey(OrderReturnApply record);
}