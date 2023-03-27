package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.MemberProductCategoryRelation;

public interface MemberProductCategoryRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberProductCategoryRelation record);

    int insertSelective(MemberProductCategoryRelation record);

    MemberProductCategoryRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberProductCategoryRelation record);

    int updateByPrimaryKey(MemberProductCategoryRelation record);
}