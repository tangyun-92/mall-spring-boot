package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.IntegrationConsumeSetting;

public interface IntegrationConsumeSettingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(IntegrationConsumeSetting record);

    int insertSelective(IntegrationConsumeSetting record);

    IntegrationConsumeSetting selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(IntegrationConsumeSetting record);

    int updateByPrimaryKey(IntegrationConsumeSetting record);
}