package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.TopicComment;

public interface TopicCommentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TopicComment record);

    int insertSelective(TopicComment record);

    TopicComment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TopicComment record);

    int updateByPrimaryKey(TopicComment record);
}