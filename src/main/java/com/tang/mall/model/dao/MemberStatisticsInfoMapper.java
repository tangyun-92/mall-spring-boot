package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberStatisticsInfo;

public interface MemberStatisticsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberStatisticsInfo record);

    int insertSelective(MemberStatisticsInfo record);

    MemberStatisticsInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberStatisticsInfo record);

    int updateByPrimaryKey(MemberStatisticsInfo record);
}