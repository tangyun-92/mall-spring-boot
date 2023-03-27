package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.IntegrationChangeHistory;

public interface IntegrationChangeHistoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(IntegrationChangeHistory record);

    int insertSelective(IntegrationChangeHistory record);

    IntegrationChangeHistory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(IntegrationChangeHistory record);

    int updateByPrimaryKey(IntegrationChangeHistory record);
}