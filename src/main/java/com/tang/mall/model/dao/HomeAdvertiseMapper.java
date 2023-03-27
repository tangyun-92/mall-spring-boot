package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HomeAdvertise;

public interface HomeAdvertiseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HomeAdvertise record);

    int insertSelective(HomeAdvertise record);

    HomeAdvertise selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HomeAdvertise record);

    int updateByPrimaryKey(HomeAdvertise record);
}