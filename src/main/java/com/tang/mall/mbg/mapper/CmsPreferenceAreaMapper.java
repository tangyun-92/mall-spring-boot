package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.CmsPreferenceArea;

public interface CmsPreferenceAreaMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsPreferenceArea record);

    int insertSelective(CmsPreferenceArea record);

    CmsPreferenceArea selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsPreferenceArea record);

    int updateByPrimaryKeyWithBLOBs(CmsPreferenceArea record);

    int updateByPrimaryKey(CmsPreferenceArea record);
}