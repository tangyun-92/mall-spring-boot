package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.SmsHomeAdvertise;

public interface SmsHomeAdvertiseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SmsHomeAdvertise record);

    int insertSelective(SmsHomeAdvertise record);

    SmsHomeAdvertise selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SmsHomeAdvertise record);

    int updateByPrimaryKey(SmsHomeAdvertise record);
}