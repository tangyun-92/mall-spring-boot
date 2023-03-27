package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberMemberTagRelation;

public interface MemberMemberTagRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberMemberTagRelation record);

    int insertSelective(MemberMemberTagRelation record);

    MemberMemberTagRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberMemberTagRelation record);

    int updateByPrimaryKey(MemberMemberTagRelation record);
}