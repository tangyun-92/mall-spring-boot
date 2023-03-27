package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsProductOperateLog;

public interface PmsProductOperateLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductOperateLog record);

    int insertSelective(PmsProductOperateLog record);

    PmsProductOperateLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductOperateLog record);

    int updateByPrimaryKey(PmsProductOperateLog record);
}