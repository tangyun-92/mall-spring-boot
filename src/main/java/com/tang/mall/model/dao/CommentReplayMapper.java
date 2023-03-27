package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.CommentReplay;

public interface CommentReplayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CommentReplay record);

    int insertSelective(CommentReplay record);

    CommentReplay selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CommentReplay record);

    int updateByPrimaryKey(CommentReplay record);
}