package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsResourceCategory;

public interface UmsResourceCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsResourceCategory record);

    int insertSelective(UmsResourceCategory record);

    UmsResourceCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsResourceCategory record);

    int updateByPrimaryKey(UmsResourceCategory record);
}