package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberLoginLog;

public interface MemberLoginLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberLoginLog record);

    int insertSelective(MemberLoginLog record);

    MemberLoginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberLoginLog record);

    int updateByPrimaryKey(MemberLoginLog record);
}