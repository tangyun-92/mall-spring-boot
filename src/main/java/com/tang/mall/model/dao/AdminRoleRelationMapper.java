package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.AdminRoleRelation;

public interface AdminRoleRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AdminRoleRelation record);

    int insertSelective(AdminRoleRelation record);

    AdminRoleRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdminRoleRelation record);

    int updateByPrimaryKey(AdminRoleRelation record);
}