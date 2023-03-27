package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsProductCategory;

public interface PmsProductCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductCategory record);

    int insertSelective(PmsProductCategory record);

    PmsProductCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductCategory record);

    int updateByPrimaryKeyWithBLOBs(PmsProductCategory record);

    int updateByPrimaryKey(PmsProductCategory record);
}