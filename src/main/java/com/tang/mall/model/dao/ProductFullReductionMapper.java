package com.tang.mall.model.dao;

import com.tang.mall.model.pojo.ProductFullReduction;

public interface ProductFullReductionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductFullReduction record);

    int insertSelective(ProductFullReduction record);

    ProductFullReduction selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductFullReduction record);

    int updateByPrimaryKey(ProductFullReduction record);
}