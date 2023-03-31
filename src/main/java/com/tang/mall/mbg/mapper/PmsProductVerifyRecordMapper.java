package com.tang.mall.mbg.mapper;

import com.tang.mall.mbg.model.PmsProductVerifyRecord;

public interface PmsProductVerifyRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PmsProductVerifyRecord record);

    int insertSelective(PmsProductVerifyRecord record);

    PmsProductVerifyRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PmsProductVerifyRecord record);

    int updateByPrimaryKey(PmsProductVerifyRecord record);
}