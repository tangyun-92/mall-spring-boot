package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Comment_Replay;

public interface Comment_ReplayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Comment_Replay record);

    int insertSelective(Comment_Replay record);

    Comment_Replay selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Comment_Replay record);

    int updateByPrimaryKey(Comment_Replay record);
}