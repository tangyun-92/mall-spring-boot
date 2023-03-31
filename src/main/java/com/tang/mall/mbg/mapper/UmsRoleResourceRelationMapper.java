package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.UmsRoleResourceRelation;

public interface UmsRoleResourceRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsRoleResourceRelation record);

    int insertSelective(UmsRoleResourceRelation record);

    UmsRoleResourceRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsRoleResourceRelation record);

    int updateByPrimaryKey(UmsRoleResourceRelation record);
}