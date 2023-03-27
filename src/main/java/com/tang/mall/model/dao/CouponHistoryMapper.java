package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CouponHistory;

public interface CouponHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CouponHistory record);

    int insertSelective(CouponHistory record);

    CouponHistory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CouponHistory record);

    int updateByPrimaryKey(CouponHistory record);
}