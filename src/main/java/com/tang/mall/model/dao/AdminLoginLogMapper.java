package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.AdminLoginLog;

public interface AdminLoginLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AdminLoginLog record);

    int insertSelective(AdminLoginLog record);

    AdminLoginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdminLoginLog record);

    int updateByPrimaryKey(AdminLoginLog record);
}