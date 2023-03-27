package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CmsPreferenceAreaProductRelation;

public interface CmsPreferenceAreaProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsPreferenceAreaProductRelation record);

    int insertSelective(CmsPreferenceAreaProductRelation record);

    CmsPreferenceAreaProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsPreferenceAreaProductRelation record);

    int updateByPrimaryKey(CmsPreferenceAreaProductRelation record);
}