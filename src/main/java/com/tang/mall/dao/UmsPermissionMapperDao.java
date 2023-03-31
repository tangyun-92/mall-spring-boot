package com.tang.mall.dao;

import com.tang.mall.mbg.model.UmsPermission;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UmsPermissionMapperDao {
    List<UmsPermission> getPermissionList(@Param("adminId") Long adminId);
}