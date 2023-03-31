package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.PmsFreightTemplate;

public interface PmsFreightTemplateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsFreightTemplate record);

    int insertSelective(PmsFreightTemplate record);

    PmsFreightTemplate selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsFreightTemplate record);

    int updateByPrimaryKey(PmsFreightTemplate record);
}