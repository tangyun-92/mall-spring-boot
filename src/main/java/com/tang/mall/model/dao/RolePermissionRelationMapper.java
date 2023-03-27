package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.RolePermissionRelation;

public interface RolePermissionRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RolePermissionRelation record);

    int insertSelective(RolePermissionRelation record);

    RolePermissionRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RolePermissionRelation record);

    int updateByPrimaryKey(RolePermissionRelation record);
}