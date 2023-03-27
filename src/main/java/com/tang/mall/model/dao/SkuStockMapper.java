package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.SkuStock;

public interface SkuStockMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SkuStock record);

    int insertSelective(SkuStock record);

    SkuStock selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SkuStock record);

    int updateByPrimaryKey(SkuStock record);
}