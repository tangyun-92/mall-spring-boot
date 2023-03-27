package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.GrowthChangeHistory;

public interface GrowthChangeHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(GrowthChangeHistory record);

    int insertSelective(GrowthChangeHistory record);

    GrowthChangeHistory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GrowthChangeHistory record);

    int updateByPrimaryKey(GrowthChangeHistory record);
}