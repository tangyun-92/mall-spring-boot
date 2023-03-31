package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.PmsProductAttribute;

public interface PmsProductAttributeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductAttribute record);

    int insertSelective(PmsProductAttribute record);

    PmsProductAttribute selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductAttribute record);

    int updateByPrimaryKey(PmsProductAttribute record);
}