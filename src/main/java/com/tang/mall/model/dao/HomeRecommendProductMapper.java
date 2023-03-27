package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HomeRecommendProduct;

public interface HomeRecommendProductMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HomeRecommendProduct record);

    int insertSelective(HomeRecommendProduct record);

    HomeRecommendProduct selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HomeRecommendProduct record);

    int updateByPrimaryKey(HomeRecommendProduct record);
}