package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsPermission;

public interface UmsPermissionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsPermission record);

    int insertSelective(UmsPermission record);

    UmsPermission selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsPermission record);

    int updateByPrimaryKey(UmsPermission record);
}