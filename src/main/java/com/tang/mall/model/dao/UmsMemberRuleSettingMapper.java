package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsMemberRuleSetting;

public interface UmsMemberRuleSettingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberRuleSetting record);

    int insertSelective(UmsMemberRuleSetting record);

    UmsMemberRuleSetting selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMemberRuleSetting record);

    int updateByPrimaryKey(UmsMemberRuleSetting record);
}