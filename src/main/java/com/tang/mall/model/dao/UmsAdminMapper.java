package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.UmsAdmin;
import org.springframework.stereotype.Repository;

@Repository
public interface UmsAdminMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsAdmin record);

    int insertSelective(UmsAdmin record);

    UmsAdmin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsAdmin record);

    int updateByPrimaryKey(UmsAdmin record);
}