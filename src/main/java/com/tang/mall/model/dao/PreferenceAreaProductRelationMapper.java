package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PreferenceAreaProductRelation;

public interface PreferenceAreaProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PreferenceAreaProductRelation record);

    int insertSelective(PreferenceAreaProductRelation record);

    PreferenceAreaProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PreferenceAreaProductRelation record);

    int updateByPrimaryKey(PreferenceAreaProductRelation record);
}