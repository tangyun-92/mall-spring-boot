package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsMenu;

public interface UmsMenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMenu record);

    int insertSelective(UmsMenu record);

    UmsMenu selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMenu record);

    int updateByPrimaryKey(UmsMenu record);
}