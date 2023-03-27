package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.Help;

public interface HelpMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Help record);

    int insertSelective(Help record);

    Help selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Help record);

    int updateByPrimaryKeyWithBLOBs(Help record);

    int updateByPrimaryKey(Help record);
}