package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberRuleSetting;

public interface MemberRuleSettingMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberRuleSetting record);

    int insertSelective(MemberRuleSetting record);

    MemberRuleSetting selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberRuleSetting record);

    int updateByPrimaryKey(MemberRuleSetting record);
}