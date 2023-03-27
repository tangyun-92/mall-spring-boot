package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductVerifyRecord;

public interface ProductVerifyRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductVerifyRecord record);

    int insertSelective(ProductVerifyRecord record);

    ProductVerifyRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductVerifyRecord record);

    int updateByPrimaryKey(ProductVerifyRecord record);
}