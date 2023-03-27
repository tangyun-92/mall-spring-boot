package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.TopicCategory;

public interface TopicCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TopicCategory record);

    int insertSelective(TopicCategory record);

    TopicCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TopicCategory record);

    int updateByPrimaryKey(TopicCategory record);
}