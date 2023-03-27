package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.OmsOrderReturnApply;

public interface OmsOrderReturnApplyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OmsOrderReturnApply record);

    int insertSelective(OmsOrderReturnApply record);

    OmsOrderReturnApply selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OmsOrderReturnApply record);

    int updateByPrimaryKey(OmsOrderReturnApply record);
}