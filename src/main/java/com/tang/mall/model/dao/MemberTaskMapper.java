package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberTask;

public interface MemberTaskMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberTask record);

    int insertSelective(MemberTask record);

    MemberTask selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberTask record);

    int updateByPrimaryKey(MemberTask record);
}