package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberTag;

public interface MemberTagMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberTag record);

    int insertSelective(MemberTag record);

    MemberTag selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberTag record);

    int updateByPrimaryKey(MemberTag record);
}