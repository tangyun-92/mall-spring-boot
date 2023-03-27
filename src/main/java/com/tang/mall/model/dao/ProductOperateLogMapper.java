package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductOperateLog;

public interface ProductOperateLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductOperateLog record);

    int insertSelective(ProductOperateLog record);

    ProductOperateLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductOperateLog record);

    int updateByPrimaryKey(ProductOperateLog record);
}