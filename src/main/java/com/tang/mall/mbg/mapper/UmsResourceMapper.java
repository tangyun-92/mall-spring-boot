package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.UmsResource;

public interface UmsResourceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsResource record);

    int insertSelective(UmsResource record);

    UmsResource selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsResource record);

    int updateByPrimaryKey(UmsResource record);
}