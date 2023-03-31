package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.CmsPreferenceAreaProductRelation;

public interface CmsPreferenceAreaProductRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsPreferenceAreaProductRelation record);

    int insertSelective(CmsPreferenceAreaProductRelation record);

    CmsPreferenceAreaProductRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsPreferenceAreaProductRelation record);

    int updateByPrimaryKey(CmsPreferenceAreaProductRelation record);
}