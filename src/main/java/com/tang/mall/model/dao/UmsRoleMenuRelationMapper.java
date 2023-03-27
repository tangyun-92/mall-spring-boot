package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsRoleMenuRelation;

public interface UmsRoleMenuRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsRoleMenuRelation record);

    int insertSelective(UmsRoleMenuRelation record);

    UmsRoleMenuRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsRoleMenuRelation record);

    int updateByPrimaryKey(UmsRoleMenuRelation record);
}