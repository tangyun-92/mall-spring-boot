package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.UmsMemberStatisticsInfo;

public interface UmsMemberStatisticsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberStatisticsInfo record);

    int insertSelective(UmsMemberStatisticsInfo record);

    UmsMemberStatisticsInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMemberStatisticsInfo record);

    int updateByPrimaryKey(UmsMemberStatisticsInfo record);
}