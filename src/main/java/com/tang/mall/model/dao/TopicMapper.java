package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Topic;

public interface TopicMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);
}