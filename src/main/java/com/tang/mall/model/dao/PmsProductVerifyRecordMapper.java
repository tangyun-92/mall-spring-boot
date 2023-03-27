package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.PmsProductVerifyRecord;

public interface PmsProductVerifyRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductVerifyRecord record);

    int insertSelective(PmsProductVerifyRecord record);

    PmsProductVerifyRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductVerifyRecord record);

    int updateByPrimaryKey(PmsProductVerifyRecord record);
}