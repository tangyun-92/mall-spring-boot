package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsPermission;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UmsPermissionMapperDao {
    List<UmsPermission> getPermissionList(@Param("adminId") Long adminId);
}