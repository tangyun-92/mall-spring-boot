package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsProductLadder;

public interface PmsProductLadderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductLadder record);

    int insertSelective(PmsProductLadder record);

    PmsProductLadder selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductLadder record);

    int updateByPrimaryKey(PmsProductLadder record);
}