package com.tang.mall.dao;

import com.tang.mall.mbg.model.UmsAdminRoleRelation;
import org.springframework.stereotype.Repository;

@Repository
public interface UmsAdminRoleRelationMapperDao {
    UmsAdminRoleRelation selectByAdminId(Long adminId);
}