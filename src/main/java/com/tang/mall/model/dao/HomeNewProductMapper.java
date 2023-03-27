package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HomeNewProduct;

public interface HomeNewProductMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HomeNewProduct record);

    int insertSelective(HomeNewProduct record);

    HomeNewProduct selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HomeNewProduct record);

    int updateByPrimaryKey(HomeNewProduct record);
}