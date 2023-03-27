package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ResourceCategory;

public interface ResourceCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ResourceCategory record);

    int insertSelective(ResourceCategory record);

    ResourceCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ResourceCategory record);

    int updateByPrimaryKey(ResourceCategory record);
}