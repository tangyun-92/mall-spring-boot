package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CmsPreferenceArea;

public interface CmsPreferenceAreaMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CmsPreferenceArea record);

    int insertSelective(CmsPreferenceArea record);

    CmsPreferenceArea selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CmsPreferenceArea record);

    int updateByPrimaryKeyWithBLOBs(CmsPreferenceArea record);

    int updateByPrimaryKey(CmsPreferenceArea record);
}