package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PreferenceArea;

public interface PreferenceAreaMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PreferenceArea record);

    int insertSelective(PreferenceArea record);

    PreferenceArea selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PreferenceArea record);

    int updateByPrimaryKeyWithBLOBs(PreferenceArea record);

    int updateByPrimaryKey(PreferenceArea record);
}