package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.AdminPermissionRelation;

public interface AdminPermissionRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AdminPermissionRelation record);

    int insertSelective(AdminPermissionRelation record);

    AdminPermissionRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdminPermissionRelation record);

    int updateByPrimaryKey(AdminPermissionRelation record);
}