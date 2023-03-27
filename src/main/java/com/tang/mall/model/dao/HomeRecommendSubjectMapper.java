package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HomeRecommendSubject;

public interface HomeRecommendSubjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HomeRecommendSubject record);

    int insertSelective(HomeRecommendSubject record);

    HomeRecommendSubject selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HomeRecommendSubject record);

    int updateByPrimaryKey(HomeRecommendSubject record);
}