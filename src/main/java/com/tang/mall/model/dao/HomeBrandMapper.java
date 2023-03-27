package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HomeBrand;

public interface HomeBrandMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HomeBrand record);

    int insertSelective(HomeBrand record);

    HomeBrand selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HomeBrand record);

    int updateByPrimaryKey(HomeBrand record);
}