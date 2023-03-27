package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.RoleMenuRelation;

public interface RoleMenuRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleMenuRelation record);

    int insertSelective(RoleMenuRelation record);

    RoleMenuRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleMenuRelation record);

    int updateByPrimaryKey(RoleMenuRelation record);
}