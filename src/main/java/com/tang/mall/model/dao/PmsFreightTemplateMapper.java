package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsFreightTemplate;

public interface PmsFreightTemplateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsFreightTemplate record);

    int insertSelective(PmsFreightTemplate record);

    PmsFreightTemplate selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsFreightTemplate record);

    int updateByPrimaryKey(PmsFreightTemplate record);
}