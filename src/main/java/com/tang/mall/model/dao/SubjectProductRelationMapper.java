package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SubjectProductRelation;

public interface SubjectProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SubjectProductRelation record);

    int insertSelective(SubjectProductRelation record);

    SubjectProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SubjectProductRelation record);

    int updateByPrimaryKey(SubjectProductRelation record);
}