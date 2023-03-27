package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.HelpCategory;

public interface HelpCategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HelpCategory record);

    int insertSelective(HelpCategory record);

    HelpCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HelpCategory record);

    int updateByPrimaryKey(HelpCategory record);
}