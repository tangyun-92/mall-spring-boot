package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberLevel;

public interface MemberLevelMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberLevel record);

    int insertSelective(MemberLevel record);

    MemberLevel selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberLevel record);

    int updateByPrimaryKey(MemberLevel record);
}